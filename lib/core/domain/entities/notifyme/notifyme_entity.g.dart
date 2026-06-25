// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifyme_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotifymeEntity _$NotifymeEntityFromJson(Map<String, dynamic> json) =>
    _NotifymeEntity(
      cn_id: (json['cn_id'] as num).toInt(),
      text: json['text'] as String,
      user_id: (json['user_id'] as num).toInt(),
      scheduled_date: json['scheduled_date'] as String,
      key: json['key'] as String,
    );

Map<String, dynamic> _$NotifymeEntityToJson(_NotifymeEntity instance) =>
    <String, dynamic>{
      'cn_id': instance.cn_id,
      'text': instance.text,
      'user_id': instance.user_id,
      'scheduled_date': instance.scheduled_date,
      'key': instance.key,
    };
