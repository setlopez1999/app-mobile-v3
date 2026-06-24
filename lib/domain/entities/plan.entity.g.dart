// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlanEntityImpl _$$PlanEntityImplFromJson(Map<String, dynamic> json) =>
    _$PlanEntityImpl(
      id: (json['id'] as num).toInt(),
      planCrmId: (json['plan_crm_id'] as num).toInt(),
      name: json['name'] as String,
      channels: (json['channels'] as num).toInt(),
      channelsGridImage: json['channels_grid_image'] as String,
      simultaneousDevices: (json['simultaneous_devices'] as num).toInt(),
      freeDays: (json['free_days'] as num).toInt(),
      state: json['state'] as bool,
      listChannel: (json['listChannel'] as List<dynamic>)
          .map((e) => ListChannel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlanEntityImplToJson(_$PlanEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'plan_crm_id': instance.planCrmId,
      'name': instance.name,
      'channels': instance.channels,
      'channels_grid_image': instance.channelsGridImage,
      'simultaneous_devices': instance.simultaneousDevices,
      'free_days': instance.freeDays,
      'state': instance.state,
      'listChannel': instance.listChannel,
    };

_$ListChannelImpl _$$ListChannelImplFromJson(Map<String, dynamic> json) =>
    _$ListChannelImpl(
      nombre: json['nombre'] as String,
      imagen: json['imagen'] as String,
    );

Map<String, dynamic> _$$ListChannelImplToJson(_$ListChannelImpl instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'imagen': instance.imagen,
    };
