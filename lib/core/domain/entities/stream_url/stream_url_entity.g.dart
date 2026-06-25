// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_url_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StreamUrl _$StreamUrlFromJson(Map<String, dynamic> json) => _StreamUrl(
      link: json['link'] as String,
      primario: (json['primario'] as num).toInt(),
      channel: json['channel'] as String? ?? '',
    );

Map<String, dynamic> _$StreamUrlToJson(_StreamUrl instance) =>
    <String, dynamic>{
      'link': instance.link,
      'primario': instance.primario,
      'channel': instance.channel,
    };
