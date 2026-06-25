import 'dart:async';
import 'dart:math';
import 'package:tvapp/core/domain/entities/tools/streaming_platform.dart';

class StreamingRepository {
  final _controller = StreamController<List<StreamingPlatform>>.broadcast();

  Stream<List<StreamingPlatform>> watchPlatforms() {
    _emitPeriodically();
    return _controller.stream;
  }

  Stream<StreamingPlatform?> watchPlatform(String id) {
    _emitPeriodically();
    return _controller.stream.map((list) {
      try {
        return list.firstWhere((p) => p.id == id);
      } catch (_) {
        return null;
      }
    });
  }

  void _emitPeriodically() {
    _controller.add(_mockPlatforms());
  }

  void updatePlatformMetrics({
    required String id,
    required double speed,
    required double upload,
  }) {}

  List<StreamingPlatform> _mockPlatforms() {
    final rng = Random();
    return [
      const StreamingPlatform(
        id: 'netflix',
        name: 'Netflix',
        logoAsset: 'assets/netflix.png',
        downloadSpeed: '25 Mbps',
        uploadSpeed: '5 Mbps',
        serverName: 'Netflix CDN',
        serverLocation: 'US East',
      ),
      StreamingPlatform(
        id: 'youtube',
        name: 'YouTube',
        logoAsset: 'assets/youtube.png',
        downloadSpeed: '${rng.nextInt(50) + 20} Mbps',
        uploadSpeed: '${rng.nextInt(10) + 2} Mbps',
        serverName: 'Google CDN',
        serverLocation: 'MIA',
      ),
      const StreamingPlatform(
        id: 'twitch',
        name: 'Twitch',
        logoAsset: 'assets/twitch.png',
        downloadSpeed: '15 Mbps',
        uploadSpeed: '3 Mbps',
        serverName: 'Twitch CDN',
        serverLocation: 'US West',
      ),
    ];
  }
}
