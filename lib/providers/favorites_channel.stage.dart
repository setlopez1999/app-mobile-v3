import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tvapp/domain/entities/channel.entity.dart';
import 'package:tvapp/domain/repositories/channels.repository.dart';
import 'package:tvapp/providers/favorite_categories.state.dart';
import 'package:tvapp/storage/secure_storage.dart';

part 'favorites_channel.stage.g.dart';

@riverpod
class FavoritesChannels extends _$FavoritesChannels {
  final repository = ChannelsRepository();
  final _prefs = SharedPreferences.getInstance();
  @override
  FutureOr<List<Channel>> build() {
    return [];
  }

  /* Future<void> getFromCategory(String categoryId) async {
    state = const AsyncLoading();
    final secureStrorage = ref.read(secureStorageProvider).requireValue;
    final token = secureStrorage.get('token')!;
    state = await AsyncValue.guard(() {
      return repository.getFavoritesChannelsFromCategory(
        token,
        categoryId: categoryId,
      );
    });
  } */

  Future<void> getFromCategory(String categoryId) async {
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    final token = secureStorage.get('token')!;

    state = const AsyncValue.loading();
    // Deja que AsyncValue.guard maneje el estado automáticamente
    try {
      final channels = await AsyncValue.guard(() async {
        return repository.getFavoritesChannelsFromCategory(
          token,
          categoryId: categoryId,
        );
      });
      state = channels;
    } catch (e) {
      // state = AsyncValue.error('error');
    }
    
  }

  Future<void> setFavorite(int channelId, String categoryId) async {
    final prefs = await _prefs;
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    final email = prefs.getString('email');
    final token = secureStorage.get('token');
    await repository.setFavorite(email!, channelId);
    await ref.read(favoriteCategoriesProvider.notifier).refresh();
    state = await AsyncValue.guard(() {
      return repository.getFavoritesChannelsFromCategory(
        token!,
        categoryId: categoryId,
      );
    });
  }

  Future<void> deleteFavorite(int channelId, String categoryId) async {
    final prefs = await _prefs;
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    final email = prefs.getString('email');
    final token = secureStorage.get('token');
    // print('TODO_ DELETE CHANNEL $channelId');
    await repository.deleteFavorite(email!, channelId);
    // await ref.read(favoriteCategoriesProvider.notifier).refresh();
    state = await AsyncValue.guard(() {
      return repository.getFavoritesChannelsFromCategory(
        token!,
        categoryId: categoryId,
      );
    });
  }
}
