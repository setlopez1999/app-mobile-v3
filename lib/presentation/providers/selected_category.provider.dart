import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_category.provider.g.dart';

@riverpod
class SelectedCategory extends _$SelectedCategory {
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
