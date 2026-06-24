import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan.entity.freezed.dart';
part 'plan.entity.g.dart';

/// Plan Entity
@freezed
class PlanEntity with _$PlanEntity {
  const factory PlanEntity({
    required int id,
    @JsonKey(name: 'plan_crm_id') required int planCrmId,
    required String name,
    required int channels,
    @JsonKey(name: 'channels_grid_image') required String channelsGridImage,
    @JsonKey(name: 'simultaneous_devices') required int simultaneousDevices,
    @JsonKey(name: 'free_days') required int freeDays,
    required bool state,
    required List<ListChannel> listChannel,
  }) = _PlanEntity;

  factory PlanEntity.fromJson(Map<String, dynamic> json) =>
      _$PlanEntityFromJson(json);
}

@freezed
class ListChannel with _$ListChannel {
  const factory ListChannel({
    required String nombre,
    required String imagen,
  }) = _ListChannel;

  factory ListChannel.fromJson(Map<String, dynamic> json) =>
      _$ListChannelFromJson(json);
}