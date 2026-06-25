// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Channel _$ChannelFromJson(Map<String, dynamic> json) => _Channel(
      adulto: (json['adulto'] as num).toInt(),
      category_id: (json['category_id'] as num?)?.toInt() ?? 0,
      card: json['card'] as String,
      description: json['description'] as String,
      number: (json['number'] as num).toInt(),
      premium: (json['premium'] as num?)?.toInt() ?? 0,
      restriccion: (json['restriccion'] as num?)?.toInt() ?? 0,
      seccion_id: (json['seccion_id'] as num?)?.toInt() ?? 0,
      studio: (json['studio'] as num).toInt(),
      title: json['title'] as String,
      epg: (json['epg'] as List<dynamic>?)
              ?.map((e) => Epg.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ChannelToJson(_Channel instance) => <String, dynamic>{
      'adulto': instance.adulto,
      'category_id': instance.category_id,
      'card': instance.card,
      'description': instance.description,
      'number': instance.number,
      'premium': instance.premium,
      'restriccion': instance.restriccion,
      'seccion_id': instance.seccion_id,
      'studio': instance.studio,
      'title': instance.title,
      'epg': instance.epg,
    };
