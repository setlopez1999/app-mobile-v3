// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
      adulto: (json['adulto'] as num?)?.toInt() ?? 0,
      background: json['background'] as String,
      card: json['card'] as String,
      especial: (json['especial'] as num).toInt(),
      id: json['id'] as String,
      name: json['name'] as String,
      ott: (json['ott'] as num).toInt(),
      predefinido: json['predefinido'] as String,
      vod: (json['vod'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
      'adulto': instance.adulto,
      'background': instance.background,
      'card': instance.card,
      'especial': instance.especial,
      'id': instance.id,
      'name': instance.name,
      'ott': instance.ott,
      'predefinido': instance.predefinido,
      'vod': instance.vod,
    };
