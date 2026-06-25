// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internet_check_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(InternetCheck)
const internetCheckProvider = InternetCheckProvider._();

final class InternetCheckProvider
    extends $AsyncNotifierProvider<InternetCheck, ConnectivityStates> {
  const InternetCheckProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'internetCheckProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$internetCheckHash();

  @$internal
  @override
  InternetCheck create() => InternetCheck();
}

String _$internetCheckHash() => r'a4b7b916f7aac4ee7b7a2b0760e8ea832f2b625c';

abstract class _$InternetCheck extends $AsyncNotifier<ConnectivityStates> {
  FutureOr<ConnectivityStates> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<ConnectivityStates>, ConnectivityStates>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<ConnectivityStates>, ConnectivityStates>,
        AsyncValue<ConnectivityStates>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
