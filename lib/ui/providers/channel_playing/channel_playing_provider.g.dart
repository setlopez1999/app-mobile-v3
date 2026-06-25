// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_playing_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChannelPlaying)
const channelPlayingProvider = ChannelPlayingProvider._();

final class ChannelPlayingProvider
    extends $NotifierProvider<ChannelPlaying, ContentState<StreamEntity>> {
  const ChannelPlayingProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'channelPlayingProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$channelPlayingHash();

  @$internal
  @override
  ChannelPlaying create() => ChannelPlaying();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContentState<StreamEntity> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContentState<StreamEntity>>(value),
    );
  }
}

String _$channelPlayingHash() => r'f8b87a10376ed6a9b43926089cc339df40c5c645';

abstract class _$ChannelPlaying extends $Notifier<ContentState<StreamEntity>> {
  ContentState<StreamEntity> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref
        as $Ref<ContentState<StreamEntity>, ContentState<StreamEntity>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<ContentState<StreamEntity>, ContentState<StreamEntity>>,
        ContentState<StreamEntity>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
