// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
      code: (json['code'] as num).toInt(),
      fecha: (json['fecha'] as num).toInt(),
      info: User.fromJson(json['info'] as Map<String, dynamic>),
      loginInfo: LoginInfo.fromJson(json['default'] as Map<String, dynamic>),
      categories: (json['googlevideos'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      premiumsallowed: (json['premiumsallowed'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
      'code': instance.code,
      'fecha': instance.fecha,
      'info': instance.info,
      'default': instance.loginInfo,
      'googlevideos': instance.categories,
      'premiumsallowed': instance.premiumsallowed,
    };
