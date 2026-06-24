import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tvapp/domain/entities/channel.entity.dart';
import 'package:tvapp/domain/repositories/channels.repository.dart';
import 'package:tvapp/storage/secure_storage.dart';

part 'channel.state.g.dart';

/// Channel State Provider
@riverpod
class AsyncChannel extends _$AsyncChannel {
  final repository = ChannelsRepository();
  @override
  FutureOr<Channel> build(Channel channel) {
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    final token = secureStorage.get('token');
    return repository.getChannelWithStream(token!, channel: channel);
  }
}
