import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tvapp/domain/entities/channel_not_plan.entity.dart';
import 'package:tvapp/domain/repositories/channels.repository.dart';

part 'channels_not_plan.state.g.dart';

@riverpod
class ChannelsNotPlan extends _$ChannelsNotPlan {
  final repository = ChannelsRepository();

  Future<List<ChannelNotPlan>> _fetch() {
    return repository.getNotPlanChannels();
  }

  @override
  FutureOr<List<ChannelNotPlan>> build() => _fetch();
}
