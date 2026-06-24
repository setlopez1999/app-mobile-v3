import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tvapp/domain/entities/index_info.entity.dart';
import 'package:tvapp/domain/repositories/index.repository.dart';
import 'package:tvapp/storage/secure_storage.dart';

part 'index.state.g.dart';

/// Index State
@riverpod
class IndexState extends _$IndexState {
  final repository = IndexRepository();

  Future<IndexInfo> _fetch() {
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    final token = secureStorage.get('token');
    return repository.getHomeInfo(token!);
  }

  @override
  FutureOr<IndexInfo> build() => _fetch();

  Future<void> reload({
    bool? withLoader = false,
  }) async {
    if (withLoader!) {
      state = const AsyncValue.loading();
    }
    state = await AsyncValue.guard(_fetch);
  }
}
