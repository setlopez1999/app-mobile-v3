import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tvapp/domain/entities/tools/streaming_platform.dart';
import 'package:tvapp/domain/repositories/tools/streaming_repository.dart';

part 'streaming_provider.g.dart';

@riverpod
StreamingRepository streamingRepository(StreamingRepositoryRef ref) {
  return StreamingRepository();
}

@riverpod
Stream<List<StreamingPlatform>> streamingPlatforms(StreamingPlatformsRef ref) {
  return ref.watch(streamingRepositoryProvider).watchPlatforms();
}

@riverpod
Stream<StreamingPlatform?> streamingPlatformDetail(
  StreamingPlatformDetailRef ref,
  String id,
) {
  return ref.watch(streamingRepositoryProvider).watchPlatform(id);
}
