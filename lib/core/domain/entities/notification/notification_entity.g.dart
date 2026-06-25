// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationEntity _$NotificationEntityFromJson(Map<String, dynamic> json) =>
    _NotificationEntity(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      text: json['text'] as String,
      read: (json['read'] as num).toInt(),
      user_id: (json['user_id'] as num?)?.toInt() ?? 0,
      topic_id: (json['topic_id'] as num?)?.toInt() ?? 0,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      image_url: json['image_url'] as String? ??
          'https://cdn-icons-png.flaticon.com/512/4226/4226663.png',
    );

Map<String, dynamic> _$NotificationEntityToJson(_NotificationEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'text': instance.text,
      'read': instance.read,
      'user_id': instance.user_id,
      'topic_id': instance.topic_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'image_url': instance.image_url,
    };
