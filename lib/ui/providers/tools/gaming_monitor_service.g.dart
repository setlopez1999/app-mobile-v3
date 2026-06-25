// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gaming_monitor_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GamingMonitor)
const gamingMonitorProvider = GamingMonitorFamily._();

final class GamingMonitorProvider
    extends $NotifierProvider<GamingMonitor, void> {
  const GamingMonitorProvider._(
      {required GamingMonitorFamily super.from, required String super.argument})
      : super(
          retry: null,
          name: r'gamingMonitorProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$gamingMonitorHash();

  @override
  String toString() {
    return r'gamingMonitorProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GamingMonitor create() => GamingMonitor();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GamingMonitorProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$gamingMonitorHash() => r'0fbfe04185edc621f5cfa903bd1b97b43d64172f';

final class GamingMonitorFamily extends $Family
    with $ClassFamilyOverride<GamingMonitor, void, void, void, String> {
  const GamingMonitorFamily._()
      : super(
          retry: null,
          name: r'gamingMonitorProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  GamingMonitorProvider call(
    String gameId,
  ) =>
      GamingMonitorProvider._(argument: gameId, from: this);

  @override
  String toString() => r'gamingMonitorProvider';
}

abstract class _$GamingMonitor extends $Notifier<void> {
  late final _$args = ref.$arg as String;
  String get gameId => _$args;

  void build(
    String gameId,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    build(
      _$args,
    );
    final ref = this.ref as $Ref<void, void>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<void, void>, void, Object?, Object?>;
    element.handleValue(ref, null);
  }
}
