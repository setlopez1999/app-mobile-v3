// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelImpl _$$ChannelImplFromJson(Map<String, dynamic> json) =>
    _$ChannelImpl(
      adulto: const BinaryToBooleanConverter()
          .fromJson((json['adulto'] as num).toInt()),
      card: json['card'] as String,
      cardIos: json['card_ios'] as String,
      description: json['description'] as String,
      number: (json['number'] as num).toInt(),
      playlist: (json['playlist'] as num).toInt(),
      premium: const BinaryToBooleanConverter()
          .fromJson((json['premium'] as num).toInt()),
      catchup: json['catchup'] == null
          ? false
          : const BinaryToBooleanConverter()
              .fromJson((json['catchup'] as num).toInt()),
      studio: (json['studio'] as num).toInt(),
      title: json['title'] as String,
      vivo: (json['vivo'] as num).toInt(),
      epg: (json['epg'] as List<dynamic>?)
              ?.map((e) => EpgEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isFavorite: json['isFavorite'] as bool? ?? false,
      streamLink: json['streamLink'] as String?,
    );

Map<String, dynamic> _$$ChannelImplToJson(_$ChannelImpl instance) =>
    <String, dynamic>{
      'adulto': const BinaryToBooleanConverter().toJson(instance.adulto),
      'card': instance.card,
      'card_ios': instance.cardIos,
      'description': instance.description,
      'number': instance.number,
      'playlist': instance.playlist,
      'premium': const BinaryToBooleanConverter().toJson(instance.premium),
      'catchup': const BinaryToBooleanConverter().toJson(instance.catchup),
      'studio': instance.studio,
      'title': instance.title,
      'vivo': instance.vivo,
      'epg': instance.epg,
      'isFavorite': instance.isFavorite,
      'streamLink': instance.streamLink,
    };
