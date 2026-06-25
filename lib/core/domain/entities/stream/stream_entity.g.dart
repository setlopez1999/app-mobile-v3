// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StreamEntity _$StreamEntityFromJson(Map<String, dynamic> json) =>
    _StreamEntity(
      audio: (json['audio'] as num).toInt(),
      cdn: (json['cdn'] as num).toInt(),
      premium: (json['premium'] as num).toInt(),
      vivo: (json['vivo'] as num).toInt(),
      channel: Channel.fromJson(json['channel'] as Map<String, dynamic>),
      url: (json['url'] as List<dynamic>?)
              ?.map((e) => StreamUrl.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      epg: (json['epg'] as List<dynamic>?)
              ?.map((e) => Epg.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      catchup: (json['catchup'] as num?)?.toInt() ?? 0,
      restriccion: (json['restriccion'] as num?)?.toInt() ?? 0,
      channelLinux: json['channelLinux'] as String? ?? '',
      channelMovil: json['channelMovil'] as String? ?? '',
      linkLinux: json['linkLinux'] as String? ?? '',
      linkMovil: json['linkMovil'] as String? ?? '',
    );

Map<String, dynamic> _$StreamEntityToJson(_StreamEntity instance) =>
    <String, dynamic>{
      'audio': instance.audio,
      'cdn': instance.cdn,
      'premium': instance.premium,
      'vivo': instance.vivo,
      'channel': instance.channel,
      'url': instance.url,
      'epg': instance.epg,
      'catchup': instance.catchup,
      'restriccion': instance.restriccion,
      'channelLinux': instance.channelLinux,
      'channelMovil': instance.channelMovil,
      'linkLinux': instance.linkLinux,
      'linkMovil': instance.linkMovil,
    };
