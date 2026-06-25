// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'districts_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Districts)
const districtsProvider = DistrictsProvider._();

final class DistrictsProvider
    extends $NotifierProvider<Districts, ContentState<List<LocationEntity>>> {
  const DistrictsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'districtsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$districtsHash();

  @$internal
  @override
  Districts create() => Districts();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContentState<List<LocationEntity>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<ContentState<List<LocationEntity>>>(value),
    );
  }
}

String _$districtsHash() => r'1ec6720f49a315c97558695a89b785bb024f8752';

abstract class _$Districts
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
