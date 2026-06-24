import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_not_plan.entity.freezed.dart';
part 'channel_not_plan.entity.g.dart';

/// Channel not Plan entity
@freezed
class ChannelNotPlan with _$ChannelNotPlan {
  const factory ChannelNotPlan({
    required String card,
    required String description,
    required int number,
    required int studio,
    required String title,
    required bool isFavorite,
  }) = _ChannelNotPlan;

  factory ChannelNotPlan.fromJson(Map<String, dynamic> json) =>
      _$ChannelNotPlanFromJson(json);
}
