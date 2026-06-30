import 'dart:io';
import 'dart:async';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class PingResult {
  final double avgPing;
  final double lossPercent;
  final double jitter;
  final bool success;

  double get avgMs => avgPing;

  PingResult({
    required this.avgPing,
    required this.lossPercent,
    required this.jitter,
    required this.success,
  });

  factory PingResult.failure() =>
      PingResult(avgPing: 0, lossPercent: 100, jitter: 0, success: false);
}

class SpeedTestResult {
  final double downloadMbps;
  final double uploadMbps;

  const SpeedTestResult({
    required this.downloadMbps,
    required this.uploadMbps,
  });
}

class NetworkAnalyzerService {
  final Dio _dio = Dio(
    BaseOptions(
      validateStatus: (_) => true,
    ),
  );

  Future<PingResult> analyze(String host, {int count = 4}) async {
    return ping(host, count: count);
  }

  Future<PingResult> ping(String host, {int count = 4}) async {
    if (Platform.isAndroid || Platform.isIOS) {
      return _pingViaTcp(host, count: count);
    }
    try {
      final isWindows = Platform.isWindows;
      final args = isWindows
          ? ['-n', count.toString(), host]
          : ['-c', count.toString(), host];

      final result = await Process.run('ping', args);

      if (result.exitCode != 0) {
        return PingResult.failure();
      }

      final output = result.stdout.toString();
      return _parsePingOutput(output, isWindows);
    } catch (e) {
      return PingResult.failure();
    }
  }

  // TCP-based ping for mobile (ICMP requires root on Android/iOS)
  Future<PingResult> _pingViaTcp(String host, {int count = 4}) async {
    const testPorts = [443, 80, 8080];
    final rtts = <double>[];

    for (int i = 0; i < count; i++) {
      final sw = Stopwatch()..start();
      bool gotRtt = false;
      for (final port in testPorts) {
        Socket? socket;
        try {
          socket = await Socket.connect(host, port,
              timeout: const Duration(seconds: 3));
          socket.destroy();
          gotRtt = true;
        } on SocketException {
          // Connection refused = RST from server = valid RTT
          gotRtt = sw.elapsedMilliseconds < 2800;
        } catch (_) {
          // Timeout = packet lost, try next port
        } finally {
          socket?.destroy();
        }
        if (gotRtt) break;
      }
      sw.stop();
      if (gotRtt && sw.elapsedMilliseconds < 3000) {
        rtts.add(sw.elapsedMilliseconds.toDouble());
      }
    }

    if (rtts.isEmpty) return PingResult.failure();

    final avg = rtts.reduce((a, b) => a + b) / rtts.length;
    final loss = (count - rtts.length) / count * 100;
    double jitter = 0;
    if (rtts.length > 1) {
      final variance =
          rtts.map((x) => pow(x - avg, 2)).reduce((a, b) => a + b) /
              rtts.length;
      jitter = sqrt(variance);
    }
    return PingResult(
        avgPing: avg, lossPercent: loss, jitter: jitter, success: true);
  }

  PingResult _parsePingOutput(String output, bool isWindows) {
    try {
      final List<double> rtts = [];
      int received = 0;
      int sent = 0;

      if (isWindows) {
        final timeRegex = RegExp(
          r'(?:tiempo|time)[=<](\d+)ms',
          caseSensitive: false,
        );
        final matches = timeRegex.allMatches(output);
        for (final match in matches) {
          final ms = double.tryParse(match.group(1) ?? '');
          if (ms != null) {
            rtts.add(ms);
            received++;
          }
        }
        final sentRegex = RegExp(r'Enviados = (\d+)', caseSensitive: false);
        final sentMatch = sentRegex.firstMatch(output);
        sent = int.tryParse(sentMatch?.group(1) ?? '4') ?? 4;
      } else {
        final timeRegex = RegExp(r'time=(\d+\.?\d*)', caseSensitive: false);
        final matches = timeRegex.allMatches(output);
        for (final match in matches) {
          final ms = double.tryParse(match.group(1) ?? '');
          if (ms != null) {
            rtts.add(ms);
            received++;
          }
        }
        final sentMatch =
            RegExp(r'(\d+) packets transmitted').firstMatch(output);
        sent = int.tryParse(sentMatch?.group(1) ?? '4') ?? 4;
      }

      if (rtts.isEmpty) return PingResult.failure();

      final avgPing = rtts.reduce((a, b) => a + b) / rtts.length;
      final lossPercent = ((sent - received) / sent) * 100;

      double jitter = 0;
      if (rtts.length > 1) {
        final variance =
            rtts.map((x) => pow(x - avgPing, 2)).reduce((a, b) => a + b) /
                rtts.length;
        jitter = sqrt(variance);
      }

      return PingResult(
        avgPing: avgPing,
        lossPercent: lossPercent,
        jitter: jitter,
        success: true,
      );
    } catch (e) {
      return PingResult.failure();
    }
  }

  Future<SpeedTestResult> runSpeedTest({String? serverBaseUrl}) async {
    double downloadMbps = 0;
    String source = 'none';
    try {
      downloadMbps = await _measureDownloadCloudflare();
      if (downloadMbps > 0) {
        source = 'Cloudflare';
      } else {
        downloadMbps = await _measureDownloadOvh();
        if (downloadMbps > 0) source = 'OVH';
      }
    } catch (e) {
      debugPrint('[Speedtest] Download error: $e');
    }

    double uploadMbps = 0;
    try {
      uploadMbps = await _measureUploadCloudflare();
    } catch (e) {
      debugPrint('[Speedtest] Upload error: $e');
    }

    debugPrint('[Speedtest] ↓${downloadMbps.toStringAsFixed(1)} ↑${uploadMbps.toStringAsFixed(1)} Mbps ($source)');
    return SpeedTestResult(downloadMbps: downloadMbps, uploadMbps: uploadMbps);
  }

  Future<double> _measureDownloadCloudflare() async {
    // Larger files give more accurate readings by amortizing TCP slow-start
    const sizes = [25, 10, 5];
    for (final mb in sizes) {
      try {
        final uri = Uri.parse('https://speed.cloudflare.com/__down?bytes=${mb * 1000000}');
        final sw = Stopwatch()..start();
        final resp = await http.get(uri).timeout(const Duration(seconds: 25));
        sw.stop();
        final sec = sw.elapsedMilliseconds / 1000.0;
        if (sec <= 0) continue;
        final mbps = (resp.bodyBytes.length * 8) / (sec * 1000000);
        debugPrint('[Speedtest] CF ${mb}MB → ${mbps.toStringAsFixed(2)} Mbps');
        if (mbps > 0) return mbps;
      } catch (e) {
        debugPrint('[Speedtest] CF ${mb}MB failed: $e');
      }
    }
    return 0;
  }

  Future<double> _measureDownloadOvh() async {
    // Reliable public files hosted by OVH as fallback when Cloudflare is unreachable
    const files = [('10Mb.dat', 10), ('1Mb.dat', 1)];
    for (final (file, mb) in files) {
      try {
        final uri = Uri.parse('https://proof.ovh.net/files/$file');
        final sw = Stopwatch()..start();
        final resp = await http.get(uri).timeout(const Duration(seconds: 25));
        sw.stop();
        final sec = sw.elapsedMilliseconds / 1000.0;
        if (sec <= 0) continue;
        final mbps = (resp.bodyBytes.length * 8) / (sec * 1000000);
        debugPrint('[Speedtest] OVH ${mb}MB → ${mbps.toStringAsFixed(2)} Mbps');
        if (mbps > 0) return mbps;
      } catch (e) {
        debugPrint('[Speedtest] OVH $file failed: $e');
      }
    }
    return 0;
  }

  Future<double> _measureUploadCloudflare() async {
    // 2 MB is enough for an accurate reading without a large RAM spike on mobile
    const uploadBytes = 2 * 1024 * 1024;
    final data = List<int>.generate(uploadBytes, (_) => Random().nextInt(256));
    final uri = Uri.parse('https://speed.cloudflare.com/__up');
    final sw = Stopwatch()..start();
    await http
        .post(uri, body: data, headers: {'Content-Type': 'application/octet-stream'})
        .timeout(const Duration(seconds: 25));
    sw.stop();
    final sec = sw.elapsedMilliseconds / 1000.0;
    if (sec <= 0) return 0;
    final mbps = (uploadBytes * 8) / (sec * 1000000);
    debugPrint('[Speedtest] CF upload → ${mbps.toStringAsFixed(2)} Mbps');
    return mbps;
  }
}

final networkAnalyzerServiceProvider = Provider<NetworkAnalyzerService>(
  (_) => NetworkAnalyzerService(),
);
