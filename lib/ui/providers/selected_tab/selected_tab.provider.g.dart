// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_tab.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedTab)
const selectedTabProvider = SelectedTabProvider._();

final class SelectedTabProvider extends $NotifierProvider<SelectedTab, int> {
  const SelectedTabProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'selectedTabProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$selectedTabHash();

  @$internal
  @override
  SelectedTab create() => SelectedTab();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$selectedTabHash() => r'a7ba5e2c4eba7c1d391c4bf82d31a71eb540a43e';

abstract class _$SelectedTab extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element = ref.element
        as $ClassProviderElement<AnyNotifier<int, int>, int, Object?, Object?>;
    element.handleValue(ref, created);
  }
}
