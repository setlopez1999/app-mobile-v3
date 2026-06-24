// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityImpl _$$UserEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityImpl(
      email: json['email'] as String,
      nombres: json['nombres'] as String,
      nacimiento: json['nacimiento'] as String,
      paterno: json['paterno'] as String? ?? '',
      materno: json['materno'] as String? ?? '',
      direccion: json['direccion'] as String? ?? '',
      comuna: json['comuna'] as String? ?? '',
      region: json['region'] as String? ?? '',
      pais: json['pais'] as String? ?? '',
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'nombres': instance.nombres,
      'nacimiento': instance.nacimiento,
      'paterno': instance.paterno,
      'materno': instance.materno,
      'direccion': instance.direccion,
      'comuna': instance.comuna,
      'region': instance.region,
      'pais': instance.pais,
      'token': instance.token,
    };
