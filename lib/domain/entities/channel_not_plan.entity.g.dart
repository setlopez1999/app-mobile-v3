// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_not_plan.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelNotPlanImpl _$$ChannelNotPlanImplFromJson(Map<String, dynamic> json) =>
    _$ChannelNotPlanImpl(
      card: json['card'] as String,
      description: json['description'] as String,
      number: (json['number'] as num).toInt(),
      studio: (json['studio'] as num).toInt(),
      title: json['title'] as String,
      isFavorite: json['isFavorite'] as bool,
    );

Map<String, dynamic> _$$ChannelNotPlanImplToJson(
        _$ChannelNotPlanImpl instance) =>
    <String, dynamic>{
      'card': instance.card,
      'description': instance.description,
      'number': instance.number,
      'studio': instance.studio,
      'title': instance.title,
      'isFavorite': instance.isFavorite,
    };
