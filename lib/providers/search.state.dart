import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tvapp/domain/repositories/channels.repository.dart';
import 'package:tvapp/storage/secure_storage.dart';

part 'search.state.g.dart';

@riverpod
class SearchableChannelsState extends _$SearchableChannelsState {
  final respository = ChannelsRepository();
  @override
  FutureOr<List<Map<String, dynamic>>> build() {
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    final token = secureStorage.get('token')!;
    return respository.getSearchableJson(token);
  }
}
