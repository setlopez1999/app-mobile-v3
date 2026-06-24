import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tvapp/domain/converters/binary_to_boolean.converter.dart';
import 'package:tvapp/domain/entities/channel_not_plan.entity.dart';
import 'package:tvapp/domain/entities/epg.entity.dart';

part 'channel.entity.freezed.dart';
part 'channel.entity.g.dart';

/// Channel entity
@freezed
class Channel with _$Channel {
  const factory Channel({
    @BinaryToBooleanConverter() required bool adulto,
    required String card,
    @JsonKey(name: 'card_ios') required String cardIos,
    required String description,
    required int number,
    required int playlist,
    @BinaryToBooleanConverter() required bool premium,
    @JsonKey(defaultValue: false) @BinaryToBooleanConverter() required bool catchup,
    required int studio,
    required String title,
    required int vivo,
    @Default([]) List<EpgEntity> epg,
    @Default(false) bool isFavorite,
    String? streamLink,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);

  factory Channel.fromNotPlan(ChannelNotPlan notPlan) => Channel(
        adulto: false,
        card: notPlan.card,
        cardIos: '',
        description: notPlan.description,
        number: notPlan.number,
        playlist: 0,
        premium: false,
        catchup: false,
        studio: notPlan.studio,
        title: notPlan.title,
        vivo: 0,
        isFavorite: notPlan.isFavorite,
      );
}
