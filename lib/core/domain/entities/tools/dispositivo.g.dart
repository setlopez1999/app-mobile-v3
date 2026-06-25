// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispositivo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Dispositivo _$DispositivoFromJson(Map<String, dynamic> json) => _Dispositivo(
      id: json['id'] as String,
      nombre: json['nombre'] as String,
      mac: json['mac'] as String,
      ipLocal: json['ipLocal'] as String,
      tipo: json['tipo'] as String,
      conectado: json['conectado'] as bool,
    );

Map<String, dynamic> _$DispositivoToJson(_Dispositivo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'mac': instance.mac,
      'ipLocal': instance.ipLocal,
      'tipo': instance.tipo,
      'conectado': instance.conectado,
    };
