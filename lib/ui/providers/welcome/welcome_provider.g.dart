// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welcome_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Welcome)
const welcomeProvider = WelcomeProvider._();

final class WelcomeProvider
    extends $NotifierProvider<Welcome, ContentState<List<Slide>>> {
  const WelcomeProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'welcomeProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$welcomeHash();

  @$internal
  @override
  Welcome create() => Welcome();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContentState<List<Slide>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContentState<List<Slide>>>(value),
    );
  }
}

String _$welcomeHash() => r'0ed717c1f20ad163180a421fcdfaa34f3015ff26';

abstract class _$Welcome extends $Notifier<ContentState<List<Slide>>> {
  ContentState<List<Slide>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<ContentState<List<Slide>>, ContentState<List<Slide>>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<ContentState<List<Slide>>, ContentState<List<Slide>>>,
        ContentState<List<Slide>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
