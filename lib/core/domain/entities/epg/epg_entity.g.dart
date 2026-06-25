// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epg_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Epg _$EpgFromJson(Map<String, dynamic> json) => _Epg(
      anterior: json['anterior'] as String,
      desc: json['desc'] as String,
      fecha_fin: const StringIntConverter().fromJson(json['fecha_fin']),
      fecha_ini: const StringIntConverter().fromJson(json['fecha_ini']),
      run: (json['run'] as num).toInt(),
      siguiente: json['siguiente'] as String,
      titulo: json['titulo'] as String,
    );

Map<String, dynamic> _$EpgToJson(_Epg instance) => <String, dynamic>{
      'anterior': instance.anterior,
      'desc': instance.desc,
      'fecha_fin': const StringIntConverter().toJson(instance.fecha_fin),
      'fecha_ini': const StringIntConverter().toJson(instance.fecha_ini),
      'run': instance.run,
      'siguiente': instance.siguiente,
      'titulo': instance.titulo,
    };
