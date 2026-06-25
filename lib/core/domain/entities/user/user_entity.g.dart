// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      factor: (json['factor'] as num).toInt(),
      icono: json['icono'] as String,
      limit_movil: json['limit_movil'] as String,
      parentlockcode: json['parentlockcode'] as String,
      timezone: json['timezone'] as String,
      token: json['token'] as String,
      urlip: json['urlip'] ?? '',
      us_id: json['us_id'] as String,
      useurlip: json['useurlip'] as bool? ?? false,
      usuario: json['usuario'] as String,
      devid: json['devid'] as String,
      enabledvod: json['enabledvod'] as bool?,
      vencimientoplan: json['vencimientoplan'] as String?,
      plan: json['plan'] as String?,
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'factor': instance.factor,
      'icono': instance.icono,
      'limit_movil': instance.limit_movil,
      'parentlockcode': instance.parentlockcode,
      'timezone': instance.timezone,
      'token': instance.token,
      'urlip': instance.urlip,
      'us_id': instance.us_id,
      'useurlip': instance.useurlip,
      'usuario': instance.usuario,
      'devid': instance.devid,
      'enabledvod': instance.enabledvod,
      'vencimientoplan': instance.vencimientoplan,
      'plan': instance.plan,
    };
