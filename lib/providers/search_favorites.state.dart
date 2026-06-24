import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tvapp/domain/entities/channel.entity.dart';
import 'package:tvapp/domain/repositories/channels.repository.dart';

part 'search_favorites.state.g.dart';

@riverpod
class SearchFavoriteState extends _$SearchFavoriteState {
  final repository = ChannelsRepository();
  
  @override
  FutureOr<List<Channel>> build() {
    return repository.getAllChannelsFromFavorites();
  }
}