import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'preferences.g.dart';

/// Shared Preferences
@riverpod
Future<SharedPreferences> prefs(PrefsRef ref) async {
  return SharedPreferences.getInstance();
}
