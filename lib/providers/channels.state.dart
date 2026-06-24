import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tvapp/domain/entities/channel.entity.dart';
import 'package:tvapp/domain/repositories/channels.repository.dart';
import 'package:tvapp/storage/secure_storage.dart';

part 'channels.state.g.dart';

/// Channels Provider
@riverpod
class Channels extends _$Channels {
  final repository = ChannelsRepository();
  final _prefs = SharedPreferences.getInstance();
  @override
  FutureOr<List<Channel>> build() {
    return [];
  }

  Future<void> getFromCategory(String categoryId) async {
    state = const AsyncLoading();
    final prefs = await _prefs;
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    final email = prefs.getString('email');
    final token = secureStorage.get('token');
    state = await AsyncValue.guard(() {     //TODO: corregir esta parte al cambiar rapido se muere aqui
      return repository.channelsFromCategory(
        token!,
        email: email ?? '',
        categoryId: categoryId,
      );
    });
  }

  Future<void> setFavorite(int channelId, String categoryId) async {
    final prefs = await _prefs;
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    final email = prefs.getString('email');
    final token = secureStorage.get('token');
    await repository.setFavorite(email!, channelId);
    state = await AsyncValue.guard(() {
      return repository.channelsFromCategory(
        token!,
        email: email,
        categoryId: categoryId,
      );
    });
  }

  Future<void> deleteFavorite(int channelId, String categoryId) async {
    final prefs = await _prefs;
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    print('TODO_ ELIOMINAR SER $channelId');
    final email = prefs.getString('email');
    final token = secureStorage.get('token');
    await repository.deleteFavorite(email!, channelId);
    state = await AsyncValue.guard(() {
      return repository.channelsFromCategory(
        token!,
        email: email,
        categoryId: categoryId,
      );
    });
  }

  Future<void> reload(categoryId) async {
    state = const AsyncLoading();
    final prefs = await _prefs;
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    final email = prefs.getString('email');
    final token = secureStorage.get('token');
    state = await AsyncValue.guard(() {
      return repository.channelsFromCategory(
        token!,
        email: email!,
        categoryId: categoryId,
      );
    });
  }

  void sendRating(String channelId) {
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    final token = secureStorage.get('token');
    repository.sendRating(token!, channelId);
  }
}
