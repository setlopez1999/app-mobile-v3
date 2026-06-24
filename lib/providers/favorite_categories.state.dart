import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tvapp/domain/entities/category.entity.dart';
import 'package:tvapp/domain/repositories/channels.repository.dart';
import 'package:tvapp/storage/secure_storage.dart';

part 'favorite_categories.state.g.dart';

@riverpod
class FavoriteCategories extends _$FavoriteCategories {
  final repository = ChannelsRepository();
  @override
  FutureOr<List<CategoryEntity>> build() {
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    final token = secureStorage.get('token');
    return repository.getFavoriteCategories(token!);
  }

  Future<void> refresh() async {
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    final token = secureStorage.get('token');
    state = await AsyncValue.guard(() {
      return repository.getFavoriteCategories(token!);
    });
  }
}
