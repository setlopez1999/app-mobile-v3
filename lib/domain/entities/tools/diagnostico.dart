class Diagnostico {
  final String id;
  final DateTime fecha;
  final int latenciaIspMs;
  final double velocidadBajadaMbps;
  final String resultado;

  const Diagnostico({
    required this.id,
    required this.fecha,
    required this.latenciaIspMs,
    required this.velocidadBajadaMbps,
    required this.resultado,
  });

  factory Diagnostico.fromJson(Map<String, dynamic> json) => Diagnostico(
        id: json['id'] as String,
        fecha: DateTime.parse(json['fecha'] as String),
        latenciaIspMs: (json['latencia_isp_ms'] as num).toInt(),
        velocidadBajadaMbps: (json['velocidad_bajada_mbps'] as num).toDouble(),
        resultado: json['resultado'] as String,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'fecha': fecha.toIso8601String(),
        'latencia_isp_ms': latenciaIspMs,
        'velocidad_bajada_mbps': velocidadBajadaMbps,
        'resultado': resultado,
      };

  Diagnostico copyWith({
    String? id,
    DateTime? fecha,
    int? latenciaIspMs,
    double? velocidadBajadaMbps,
    String? resultado,
  }) =>
      Diagnostico(
        id: id ?? this.id,
        fecha: fecha ?? this.fecha,
        latenciaIspMs: latenciaIspMs ?? this.latenciaIspMs,
        velocidadBajadaMbps: velocidadBajadaMbps ?? this.velocidadBajadaMbps,
        resultado: resultado ?? this.resultado,
      );
}

class DiagnosticoRequest {
  final String clienteId;
  final int latenciaGoogleMs;
  final int latenciaIspMs;
  final double velocidadBajadaMbps;
  final double velocidadSubidaMbps;
  final String fibraPotenciaDbm;
  final String fibraEstado;

  const DiagnosticoRequest({
    required this.clienteId,
    required this.latenciaGoogleMs,
    required this.latenciaIspMs,
    required this.velocidadBajadaMbps,
    required this.velocidadSubidaMbps,
    required this.fibraPotenciaDbm,
    required this.fibraEstado,
  });

  Map<String, dynamic> toJson() => {
        'cliente_id': clienteId,
        'latencia_google_ms': latenciaGoogleMs,
        'latencia_isp_ms': latenciaIspMs,
        'velocidad_bajada_mbps': velocidadBajadaMbps,
        'velocidad_subida_mbps': velocidadSubidaMbps,
        'fibra_potencia_dbm': fibraPotenciaDbm,
        'fibra_estado': fibraEstado,
      };
}

class DiagnosticoSaveResult {
  final bool success;
  final String diagnosticoId;
  final String resultado;

  const DiagnosticoSaveResult({
    required this.success,
    required this.diagnosticoId,
    required this.resultado,
  });

  factory DiagnosticoSaveResult.fromJson(Map<String, dynamic> json) =>
      DiagnosticoSaveResult(
        success: json['success'] as bool,
        diagnosticoId: json['diagnostico_id'] as String,
        resultado: json['resultado'] as String,
      );
}
