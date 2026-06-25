// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channels_loaded_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChannelsLoaded)
const channelsLoadedProvider = ChannelsLoadedProvider._();

final class ChannelsLoadedProvider
    extends $NotifierProvider<ChannelsLoaded, ContentState<List<Channel>>> {
  const ChannelsLoadedProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'channelsLoadedProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$channelsLoadedHash();

  @$internal
  @override
  ChannelsLoaded create() => ChannelsLoaded();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContentState<List<Channel>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContentState<List<Channel>>>(value),
    );
  }
}

String _$channelsLoadedHash() => r'4748bde7353155f95bbed0e3651f0df14f554435';

abstract class _$ChannelsLoaded extends $Notifier<ContentState<List<Channel>>> {
  ContentState<List<Channel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref
        as $Ref<ContentState<List<Channel>>, ContentState<List<Channel>>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<ContentState<List<Channel>>, ContentState<List<Channel>>>,
        ContentState<List<Channel>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
