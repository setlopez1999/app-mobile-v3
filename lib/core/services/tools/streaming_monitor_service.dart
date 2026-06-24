import 'dart:async';
import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/domain/repositories/tools/network_analyzer_service.dart';
import 'package:tvapp/domain/repositories/tools/streaming_repository.dart';
import 'package:tvapp/providers/tools/streaming_provider.dart';

/// Provider que activa el monitor periodico de streaming para [platformId].
/// Uso como side-effect: `ref.watch(streamingMonitorProvider(platformId))`
final streamingMonitorProvider =
    Provider.family.autoDispose<void, String>((ref, platformId) {
  final monitor = StreamingMonitorService(
    platformId: platformId,
    repository: ref.watch(streamingRepositoryProvider),
  );
  monitor.start();
  ref.onDispose(monitor.stop);
});

class StreamingMonitorService {
  final String platformId;
  final StreamingRepository repository;
  Timer? _timer;
  final _analyzer = NetworkAnalyzerService();
  final _random = Random();

  static const _platformTargets = <String, String>{
    'netflix': 'custom.netflix.com',
    'youtube': 'google.com',
    'disney': 'cloudfront.net',
    'hbomax': 'azure.microsoft.com',
    'prime': 'atv-ps.amazon.com',
  };

  StreamingMonitorService({
    required this.platformId,
    required this.repository,
  });

  void start() {
    _timer?.cancel();
    _timer = Timer.periodic(
      const Duration(seconds: 8),
      (_) => _performAnalysis(),
    );
  }

  void stop() => _timer?.cancel();

  Future<void> _performAnalysis() async {
    final target = _platformTargets[platformId];
    if (target == null) return;
    final result = await _analyzer.analyze(target, count: 2);
    double baseSpeed = 40.0 + _random.nextDouble() * 20.0;
    if (result.success) {
      if (result.avgPing < 50) baseSpeed += 20;
      if (result.avgPing > 150) baseSpeed -= 15;
      repository.updatePlatformMetrics(
        id: platformId,
        speed: baseSpeed,
        upload: baseSpeed / 4,
      );
    }
  }
}
