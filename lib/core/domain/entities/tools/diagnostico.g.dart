// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnostico.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Diagnostico _$DiagnosticoFromJson(Map<String, dynamic> json) => _Diagnostico(
      id: json['id'] as String,
      fecha: DateTime.parse(json['fecha'] as String),
      latenciaIspMs: (json['latenciaIspMs'] as num).toInt(),
      velocidadBajadaMbps: (json['velocidadBajadaMbps'] as num).toDouble(),
      resultado: json['resultado'] as String,
    );

Map<String, dynamic> _$DiagnosticoToJson(_Diagnostico instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fecha': instance.fecha.toIso8601String(),
      'latenciaIspMs': instance.latenciaIspMs,
      'velocidadBajadaMbps': instance.velocidadBajadaMbps,
      'resultado': instance.resultado,
    };

_DiagnosticoRequest _$DiagnosticoRequestFromJson(Map<String, dynamic> json) =>
    _DiagnosticoRequest(
      clienteId: json['clienteId'] as String,
      latenciaGoogleMs: (json['latenciaGoogleMs'] as num).toInt(),
      latenciaIspMs: (json['latenciaIspMs'] as num).toInt(),
      velocidadBajadaMbps: (json['velocidadBajadaMbps'] as num).toDouble(),
      velocidadSubidaMbps: (json['velocidadSubidaMbps'] as num).toDouble(),
      fibraPotenciaDbm: json['fibraPotenciaDbm'] as String,
      fibraEstado: json['fibraEstado'] as String,
    );

Map<String, dynamic> _$DiagnosticoRequestToJson(_DiagnosticoRequest instance) =>
    <String, dynamic>{
      'clienteId': instance.clienteId,
      'latenciaGoogleMs': instance.latenciaGoogleMs,
      'latenciaIspMs': instance.latenciaIspMs,
      'velocidadBajadaMbps': instance.velocidadBajadaMbps,
      'velocidadSubidaMbps': instance.velocidadSubidaMbps,
      'fibraPotenciaDbm': instance.fibraPotenciaDbm,
      'fibraEstado': instance.fibraEstado,
    };

_DiagnosticoSaveResult _$DiagnosticoSaveResultFromJson(
        Map<String, dynamic> json) =>
    _DiagnosticoSaveResult(
      success: json['success'] as bool,
      diagnosticoId: json['diagnosticoId'] as String,
      resultado: json['resultado'] as String,
    );

Map<String, dynamic> _$DiagnosticoSaveResultToJson(
        _DiagnosticoSaveResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'diagnosticoId': instance.diagnosticoId,
      'resultado': instance.resultado,
    };
