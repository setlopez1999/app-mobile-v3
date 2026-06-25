// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensitive_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SensitiveDataEntity _$SensitiveDataEntityFromJson(Map<String, dynamic> json) =>
    _SensitiveDataEntity(
      token: json['token'] as String,
      parental: json['parental'] as String,
      email: json['email'] as String,
      userID: json['userID'] as String,
      deviceId: json['deviceId'] as String,
    );

Map<String, dynamic> _$SensitiveDataEntityToJson(
        _SensitiveDataEntity instance) =>
    <String, dynamic>{
      'token': instance.token,
      'parental': instance.parental,
      'email': instance.email,
      'userID': instance.userID,
      'deviceId': instance.deviceId,
    };
