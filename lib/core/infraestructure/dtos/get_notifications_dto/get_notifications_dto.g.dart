// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notifications_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetNotificationDto _$GetNotificationDtoFromJson(Map<String, dynamic> json) =>
    _GetNotificationDto(
      message: (json['message'] as List<dynamic>)
          .map((e) => NotificationEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetNotificationDtoToJson(_GetNotificationDto instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
