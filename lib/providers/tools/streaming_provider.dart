import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/domain/entities/tools/streaming_platform.dart';
import 'package:tvapp/domain/repositories/tools/streaming_repository.dart';

final streamingRepositoryProvider = Provider<StreamingRepository>((ref) {
  return StreamingRepository();
});

final streamingPlatformsProvider =
    StreamProvider<List<StreamingPlatform>>((ref) {
  return ref.watch(streamingRepositoryProvider).watchPlatforms();
});

final streamingPlatformDetailProvider =
    StreamProvider.family<StreamingPlatform?, String>((ref, id) {
  return ref.watch(streamingRepositoryProvider).watchPlatform(id);
});
