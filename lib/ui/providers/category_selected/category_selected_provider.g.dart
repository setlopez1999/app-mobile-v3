// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_selected_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CategorySelected)
const categorySelectedProvider = CategorySelectedProvider._();

final class CategorySelectedProvider
    extends $NotifierProvider<CategorySelected, Category?> {
  const CategorySelectedProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'categorySelectedProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$categorySelectedHash();

  @$internal
  @override
  CategorySelected create() => CategorySelected();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Category? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Category?>(value),
    );
  }
}

String _$categorySelectedHash() => r'0236bd1732f44f0d705801662b88ca091cc459b2';

abstract class _$CategorySelected extends $Notifier<Category?> {
  Category? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Category?, Category?>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<Category?, Category?>, Category?, Object?, Object?>;
    element.handleValue(ref, created);
  }
}
