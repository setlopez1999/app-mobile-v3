// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Favorites)
const favoritesProvider = FavoritesProvider._();

final class FavoritesProvider
    extends $NotifierProvider<Favorites, ContentState<List<Channel>>> {
  const FavoritesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'favoritesProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$favoritesHash();

  @$internal
  @override
  Favorites create() => Favorites();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContentState<List<Channel>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContentState<List<Channel>>>(value),
    );
  }
}

String _$favoritesHash() => r'8eac5f8d1cc3523dac0b09eaeadddcc6558cccf3';

abstract class _$Favorites extends $Notifier<ContentState<List<Channel>>> {
  ContentState<List<Channel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref
        as $Ref<ContentState<List<Channel>>, ContentState<List<Channel>>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<ContentState<List<Channel>>, ContentState<List<Channel>>>,
        ContentState<List<Channel>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
