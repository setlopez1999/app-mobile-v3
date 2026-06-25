// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streaming_monitor_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(StreamingMonitor)
const streamingMonitorProvider = StreamingMonitorFamily._();

final class StreamingMonitorProvider
    extends $NotifierProvider<StreamingMonitor, void> {
  const StreamingMonitorProvider._(
      {required StreamingMonitorFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'streamingMonitorProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$streamingMonitorHash();

  @override
  String toString() {
    return r'streamingMonitorProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  StreamingMonitor create() => StreamingMonitor();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is StreamingMonitorProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$streamingMonitorHash() => r'5b24351219da2fee8705dbe8f76ea58d41fa4870';

final class StreamingMonitorFamily extends $Family
    with $ClassFamilyOverride<StreamingMonitor, void, void, void, String> {
  const StreamingMonitorFamily._()
      : super(
          retry: null,
          name: r'streamingMonitorProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  StreamingMonitorProvider call(
    String platformId,
  ) =>
      StreamingMonitorProvider._(argument: platformId, from: this);

  @override
  String toString() => r'streamingMonitorProvider';
}

abstract class _$StreamingMonitor extends $Notifier<void> {
  late final _$args = ref.$arg as String;
  String get platformId => _$args;

  void build(
    String platformId,
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
