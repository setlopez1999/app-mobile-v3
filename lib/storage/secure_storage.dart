import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'secure_storage.g.dart';

@riverpod
Future<SecureStorage> secureStorage(SecureStorageRef ref) async {
  return SecureStorage.getInstance(keys: {'token', 'parental', 'email'});
}

class SecureStorage {
  SecureStorage._(this._prefs, this._cache);

  final SharedPreferences _prefs;
  final Map<String, String> _cache;

  static Future<SecureStorage> getInstance({required Set<String> keys}) async {
    final prefs = await SharedPreferences.getInstance();
    final cache = <String, String>{};

    for (final key in keys) {
      final value = prefs.getString(key);
      if (value != null) {
        cache[key] = value;
      }
    }

    return SecureStorage._(prefs, cache);
  }

  String? get(String key) => _cache[key];

  Future<void> set(String key, String value) async {
    _cache[key] = value;
    await _prefs.setString(key, value);
  }

  Future<void> remove(String key) async {
    _cache.remove(key);
    await _prefs.remove(key);
  }
}
