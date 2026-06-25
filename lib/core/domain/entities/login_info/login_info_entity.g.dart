// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginInfo _$LoginInfoFromJson(Map<String, dynamic> json) => _LoginInfo(
      api_url: json['api_url'] as String,
      background: json['background'] as String,
      colorB: json['colorB'] as String,
      colorF: json['colorF'] as String,
      colorI: json['colorI'] as String,
      correosoporte: json['correosoporte'] as String,
      fingerprint: json['fingerprint'] as String,
      fonosoporte: json['fonosoporte'] as String,
      whatsapp: json['whatsapp'] as String? ?? '',
      leyendapremium: json['leyendapremium'] as String,
      logoprincipal: json['logoprincipal'] as String,
      logosidebar: json['logosidebar'] as String,
      textoprincipal: json['textoprincipal'] as String,
    );

Map<String, dynamic> _$LoginInfoToJson(_LoginInfo instance) =>
    <String, dynamic>{
      'api_url': instance.api_url,
      'background': instance.background,
      'colorB': instance.colorB,
      'colorF': instance.colorF,
      'colorI': instance.colorI,
      'correosoporte': instance.correosoporte,
      'fingerprint': instance.fingerprint,
      'fonosoporte': instance.fonosoporte,
      'whatsapp': instance.whatsapp,
      'leyendapremium': instance.leyendapremium,
      'logoprincipal': instance.logoprincipal,
      'logosidebar': instance.logosidebar,
      'textoprincipal': instance.textoprincipal,
    };
