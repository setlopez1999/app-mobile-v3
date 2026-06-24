import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_favorite_category.provider.g.dart';

@riverpod
class SelectedFavoriteCategory extends _$SelectedFavoriteCategory {
  @override
  String build() {
    return '';
  }

  /// Set selected tab
  // ignore: use_setters_to_change_properties
  void value(String value) {
    state = value;
  }
}
