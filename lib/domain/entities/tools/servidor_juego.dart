/// [estado] puede ser: "EXCELENTE" | "BUENO" | "MALO" | "SIN_CONEXION"
class ServidorJuego {
  final String id;
  final String juego;
  final String servidor;
  final String ubicacion;
  final int pingMs;
  final int jitterMs;
  final double perdidaPaquetesPct;
  final String estado;

  const ServidorJuego({
    required this.id,
    required this.juego,
    required this.servidor,
    required this.ubicacion,
    required this.pingMs,
    required this.jitterMs,
    required this.perdidaPaquetesPct,
    required this.estado,
  });

  factory ServidorJuego.fromJson(Map<String, dynamic> json) => ServidorJuego(
        id: json['id'] as String,
        juego: json['juego'] as String,
        servidor: json['servidor'] as String,
        ubicacion: json['ubicacion'] as String,
        pingMs: (json['ping_ms'] as num).toInt(),
        jitterMs: (json['jitter_ms'] as num).toInt(),
        perdidaPaquetesPct: (json['perdida_paquetes_pct'] as num).toDouble(),
        estado: json['estado'] as String,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'juego': juego,
        'servidor': servidor,
        'ubicacion': ubicacion,
        'ping_ms': pingMs,
        'jitter_ms': jitterMs,
        'perdida_paquetes_pct': perdidaPaquetesPct,
        'estado': estado,
      };

  ServidorJuego copyWith({
    String? id,
    String? juego,
    String? servidor,
    String? ubicacion,
    int? pingMs,
    int? jitterMs,
    double? perdidaPaquetesPct,
    String? estado,
  }) =>
      ServidorJuego(
        id: id ?? this.id,
        juego: juego ?? this.juego,
        servidor: servidor ?? this.servidor,
        ubicacion: ubicacion ?? this.ubicacion,
        pingMs: pingMs ?? this.pingMs,
        jitterMs: jitterMs ?? this.jitterMs,
        perdidaPaquetesPct: perdidaPaquetesPct ?? this.perdidaPaquetesPct,
        estado: estado ?? this.estado,
      );
}
