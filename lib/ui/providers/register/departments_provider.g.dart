// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departments_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Departments)
const departmentsProvider = DepartmentsProvider._();

final class DepartmentsProvider
    extends $NotifierProvider<Departments, ContentState<List<LocationEntity>>> {
  const DepartmentsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'departmentsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$departmentsHash();

  @$internal
  @override
  Departments create() => Departments();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContentState<List<LocationEntity>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<ContentState<List<LocationEntity>>>(value),
    );
  }
}

String _$departmentsHash() => r'cabde278bb9eeb47f806cb80320e37918632829c';

abstract class _$Departments
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
