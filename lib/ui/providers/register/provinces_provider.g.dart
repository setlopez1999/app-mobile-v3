// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provinces_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provinces

@ProviderFor(Provinces)
const provincesProvider = ProvincesProvider._();

/// Provinces
final class ProvincesProvider
    extends $NotifierProvider<Provinces, ContentState<List<LocationEntity>>> {
  /// Provinces
  const ProvincesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'provincesProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$provincesHash();

  @$internal
  @override
  Provinces create() => Provinces();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContentState<List<LocationEntity>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<ContentState<List<LocationEntity>>>(value),
    );
  }
}

String _$provincesHash() => r'e7995e1c7ac0edde0fe3d073512489b82897ccb1';

/// Provinces

abstract class _$Provinces
    extends $Notifier<ContentState<List<LocationEntity>>> {
  ContentState<List<LocationEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ContentState<List<LocationEntity>>,
        ContentState<List<LocationEntity>>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<ContentState<List<LocationEntity>>,
            ContentState<List<LocationEntity>>>,
        ContentState<List<LocationEntity>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
