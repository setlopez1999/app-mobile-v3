// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multicdn_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MultiCDN)
const multiCDNProvider = MultiCDNProvider._();

final class MultiCDNProvider
    extends $NotifierProvider<MultiCDN, ContentState<String>> {
  const MultiCDNProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'multiCDNProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$multiCDNHash();

  @$internal
  @override
  MultiCDN create() => MultiCDN();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContentState<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContentState<String>>(value),
    );
  }
}

String _$multiCDNHash() => r'739d681265ec39c82f357ae9a4447bb16da69395';

abstract class _$MultiCDN extends $Notifier<ContentState<String>> {
  ContentState<String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ContentState<String>, ContentState<String>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<ContentState<String>, ContentState<String>>,
        ContentState<String>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
