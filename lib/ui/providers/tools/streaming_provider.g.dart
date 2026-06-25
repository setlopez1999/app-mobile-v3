// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streaming_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(streamingRepository)
const streamingRepositoryProvider = StreamingRepositoryProvider._();

final class StreamingRepositoryProvider extends $FunctionalProvider<
    StreamingRepository,
    StreamingRepository,
    StreamingRepository> with $Provider<StreamingRepository> {
  const StreamingRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'streamingRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$streamingRepositoryHash();

  @$internal
  @override
  $ProviderElement<StreamingRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  StreamingRepository create(Ref ref) {
    return streamingRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StreamingRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StreamingRepository>(value),
    );
  }
}

String _$streamingRepositoryHash() =>
    r'6d7948f46bc571e819185cd10541c0f9c61fb499';

@ProviderFor(streamingPlatforms)
const streamingPlatformsProvider = StreamingPlatformsProvider._();

final class StreamingPlatformsProvider extends $FunctionalProvider<
        AsyncValue<List<StreamingPlatform>>,
        List<StreamingPlatform>,
        Stream<List<StreamingPlatform>>>
    with
        $FutureModifier<List<StreamingPlatform>>,
        $StreamProvider<List<StreamingPlatform>> {
  const StreamingPlatformsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'streamingPlatformsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$streamingPlatformsHash();

  @$internal
  @override
  $StreamProviderElement<List<StreamingPlatform>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<StreamingPlatform>> create(Ref ref) {
    return streamingPlatforms(ref);
  }
}

String _$streamingPlatformsHash() =>
    r'a0afb0de12601f412ae83ae4e34e373727d2f624';

@ProviderFor(streamingPlatformDetail)
const streamingPlatformDetailProvider = StreamingPlatformDetailFamily._();

final class StreamingPlatformDetailProvider extends $FunctionalProvider<
        AsyncValue<StreamingPlatform?>,
        StreamingPlatform?,
        Stream<StreamingPlatform?>>
    with
        $FutureModifier<StreamingPlatform?>,
        $StreamProvider<StreamingPlatform?> {
  const StreamingPlatformDetailProvider._(
      {required StreamingPlatformDetailFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'streamingPlatformDetailProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$streamingPlatformDetailHash();

  @override
  String toString() {
    return r'streamingPlatformDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<StreamingPlatform?> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<StreamingPlatform?> create(Ref ref) {
    final argument = this.argument as String;
    return streamingPlatformDetail(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is StreamingPlatformDetailProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$streamingPlatformDetailHash() =>
    r'70e17a760cf2c44b9f43885f183a5a8b5174a3bb';

final class StreamingPlatformDetailFamily extends $Family
    with $FunctionalFamilyOverride<Stream<StreamingPlatform?>, String> {
  const StreamingPlatformDetailFamily._()
      : super(
          retry: null,
          name: r'streamingPlatformDetailProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  StreamingPlatformDetailProvider call(
    String id,
  ) =>
      StreamingPlatformDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'streamingPlatformDetailProvider';
}
