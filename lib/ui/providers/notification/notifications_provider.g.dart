// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Notifications)
const notificationsProvider = NotificationsProvider._();

final class NotificationsProvider extends $NotifierProvider<Notifications,
    ContentState<List<NotificationEntity>>> {
  const NotificationsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'notificationsProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$notificationsHash();

  @$internal
  @override
  Notifications create() => Notifications();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContentState<List<NotificationEntity>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<ContentState<List<NotificationEntity>>>(value),
    );
  }
}

String _$notificationsHash() => r'f3cf52fb92a291e4eeb19cae80b2e61a3cf3e822';

abstract class _$Notifications
    extends $Notifier<ContentState<List<NotificationEntity>>> {
  ContentState<List<NotificationEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ContentState<List<NotificationEntity>>,
        ContentState<List<NotificationEntity>>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<ContentState<List<NotificationEntity>>,
            ContentState<List<NotificationEntity>>>,
        ContentState<List<NotificationEntity>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
