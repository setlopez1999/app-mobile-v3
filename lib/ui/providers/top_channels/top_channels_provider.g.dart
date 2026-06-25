// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_channels_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TopChannels)
const topChannelsProvider = TopChannelsProvider._();

final class TopChannelsProvider
    extends $NotifierProvider<TopChannels, ContentState<List<Channel>>> {
  const TopChannelsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'topChannelsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$topChannelsHash();

  @$internal
  @override
  TopChannels create() => TopChannels();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContentState<List<Channel>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContentState<List<Channel>>>(value),
    );
  }
}

String _$topChannelsHash() => r'767837cbd88743d61462adea723c0f0b84116f4c';

abstract class _$TopChannels extends $Notifier<ContentState<List<Channel>>> {
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
