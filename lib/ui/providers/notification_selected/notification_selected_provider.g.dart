// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_selected_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NotificationSelected)
const notificationSelectedProvider = NotificationSelectedProvider._();

final class NotificationSelectedProvider
    extends $NotifierProvider<NotificationSelected, NotificationEntity?> {
  const NotificationSelectedProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'notificationSelectedProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$notificationSelectedHash();

  @$internal
  @override
  NotificationSelected create() => NotificationSelected();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NotificationEntity? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NotificationEntity?>(value),
    );
  }
}

String _$notificationSelectedHash() =>
    r'721ad12fc5172d1b6c1c0dfbbce7839b43c4dea7';

abstract class _$NotificationSelected extends $Notifier<NotificationEntity?> {
  NotificationEntity? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<NotificationEntity?, NotificationEntity?>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<NotificationEntity?, NotificationEntity?>,
        NotificationEntity?,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
