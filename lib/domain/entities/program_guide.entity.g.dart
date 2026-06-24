// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program_guide.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvGuideEntityImpl _$$TvGuideEntityImplFromJson(Map<String, dynamic> json) =>
    _$TvGuideEntityImpl(
      id: (json['cn_id'] as num).toInt(),
      nombre: json['nombre'] as String,
      descripcion: json['descripcion'] as String,
      numero: (json['numero'] as num).toInt(),
      imagen: json['imagen'] as String,
      adulto: (json['adulto'] as num).toInt(),
      cdn: (json['cdn'] as num).toInt(),
      epg: (json['epg'] as List<dynamic>)
          .map((e) => EpgEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoryId: (json['category_id'] as num).toInt(),
    );

Map<String, dynamic> _$$TvGuideEntityImplToJson(_$TvGuideEntityImpl instance) =>
    <String, dynamic>{
      'cn_id': instance.id,
      'nombre': instance.nombre,
      'descripcion': instance.descripcion,
      'numero': instance.numero,
      'imagen': instance.imagen,
      'adulto': instance.adulto,
      'cdn': instance.cdn,
      'epg': instance.epg,
      'category_id': instance.categoryId,
    };
