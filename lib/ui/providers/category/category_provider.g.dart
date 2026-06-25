// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Categories)
const categoriesProvider = CategoriesProvider._();

final class CategoriesProvider
    extends $NotifierProvider<Categories, ContentState<List<Category>>> {
  const CategoriesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'categoriesProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$categoriesHash();

  @$internal
  @override
  Categories create() => Categories();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContentState<List<Category>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContentState<List<Category>>>(value),
    );
  }
}

String _$categoriesHash() => r'3e3b402a059de9f9f7e21fe81f7beb721733b036';

abstract class _$Categories extends $Notifier<ContentState<List<Category>>> {
  ContentState<List<Category>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref
        as $Ref<ContentState<List<Category>>, ContentState<List<Category>>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<ContentState<List<Category>>, ContentState<List<Category>>>,
        ContentState<List<Category>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
