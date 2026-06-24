// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epg.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpgEntityImpl _$$EpgEntityImplFromJson(Map<String, dynamic> json) =>
    _$EpgEntityImpl(
      anterior: json['anterior'] as String,
      channel: json['channel'] as String,
      desc: json['desc'] as String,
      fechaFin: (json['fecha_fin'] as num).toInt(),
      fechaIni: (json['fecha_ini'] as num).toInt(),
      run: (json['run'] as num).toInt(),
      siguiente: json['siguiente'] as String,
      titulo: json['titulo'] as String,
    );

Map<String, dynamic> _$$EpgEntityImplToJson(_$EpgEntityImpl instance) =>
    <String, dynamic>{
      'anterior': instance.anterior,
      'channel': instance.channel,
      'desc': instance.desc,
      'fecha_fin': instance.fechaFin,
      'fecha_ini': instance.fechaIni,
      'run': instance.run,
      'siguiente': instance.siguiente,
      'titulo': instance.titulo,
    };
