// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifyme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NotifyMe)
const notifyMeProvider = NotifyMeProvider._();

final class NotifyMeProvider
    extends $NotifierProvider<NotifyMe, ContentState<List<NotifymeEntity>>> {
  const NotifyMeProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'notifyMeProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$notifyMeHash();

  @$internal
  @override
  NotifyMe create() => NotifyMe();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContentState<List<NotifymeEntity>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<ContentState<List<NotifymeEntity>>>(value),
    );
  }
}

String _$notifyMeHash() => r'518b5b2f48851c30fcf7a5473123bab0fe7fec0b';

abstract class _$NotifyMe
    extends $Notifier<ContentState<List<NotifymeEntity>>> {
  ContentState<List<NotifymeEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ContentState<List<NotifymeEntity>>,
        ContentState<List<NotifymeEntity>>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<ContentState<List<NotifymeEntity>>,
            ContentState<List<NotifymeEntity>>>,
        ContentState<List<NotifymeEntity>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
