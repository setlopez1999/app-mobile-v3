// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channels_searched_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChannelsSearched)
const channelsSearchedProvider = ChannelsSearchedProvider._();

final class ChannelsSearchedProvider
    extends $NotifierProvider<ChannelsSearched, ContentState<List<Channel>>> {
  const ChannelsSearchedProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'channelsSearchedProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$channelsSearchedHash();

  @$internal
  @override
  ChannelsSearched create() => ChannelsSearched();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContentState<List<Channel>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContentState<List<Channel>>>(value),
    );
  }
}

String _$channelsSearchedHash() => r'06f2137d46f421b8a705ff43ee373bb290c58457';

abstract class _$ChannelsSearched
    extends $Notifier<ContentState<List<Channel>>> {
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
