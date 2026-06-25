// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guide_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Guide)
const guideProvider = GuideProvider._();

final class GuideProvider
    extends $NotifierProvider<Guide, ContentState<List<Channel>>> {
  const GuideProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'guideProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$guideHash();

  @$internal
  @override
  Guide create() => Guide();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContentState<List<Channel>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContentState<List<Channel>>>(value),
    );
  }
}

String _$guideHash() => r'99ecffd86d173fb6b743116110385077af7c856d';

abstract class _$Guide extends $Notifier<ContentState<List<Channel>>> {
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
