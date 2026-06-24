import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage.g.dart';

@riverpod
Future<SecureStorage> secureStorage(SecureStorageRef ref) async {
  return SecureStorage.getInstance(keys: {'token', 'parental', 'email'});
}

class SecureStorage {
  SecureStorage._(this._storage, this._cache);

  final FlutterSecureStorage _storage;
  final Map<String, String> _cache;

  static Future<SecureStorage> getInstance({required Set<String> keys}) async {
    const storage = FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
      iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
    );
    final cache = <String, String>{};
    for (final key in keys) {
      final value = await storage.read(key: key);
      if (value != null) {
        cache[key] = value;
      }
    }
    return SecureStorage._(storage, cache);
  }

  String? get(String key) => _cache[key];

  Future<void> set(String key, String value) async {
    _cache[key] = value;
    await _storage.write(key: key, value: value);
  }

  Future<void> remove(String key) async {
    _cache.remove(key);
    await _storage.delete(key: key);
  }
}
