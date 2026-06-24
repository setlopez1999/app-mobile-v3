class Notificacion {
  final String id;
  final String titulo;
  final String mensaje;
  final DateTime fecha;
  final bool leido;

  const Notificacion({
    required this.id,
    required this.titulo,
    required this.mensaje,
    required this.fecha,
    required this.leido,
  });

  factory Notificacion.fromJson(Map<String, dynamic> json) => Notificacion(
        id: json['id'] as String,
        titulo: json['titulo'] as String,
        mensaje: json['mensaje'] as String,
        fecha: DateTime.parse(json['fecha'] as String),
        leido: json['leido'] as bool,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'titulo': titulo,
        'mensaje': mensaje,
        'fecha': fecha.toIso8601String(),
        'leido': leido,
      };

  Notificacion copyWith({
    String? id,
    String? titulo,
    String? mensaje,
    DateTime? fecha,
    bool? leido,
  }) =>
      Notificacion(
        id: id ?? this.id,
        titulo: titulo ?? this.titulo,
        mensaje: mensaje ?? this.mensaje,
        fecha: fecha ?? this.fecha,
        leido: leido ?? this.leido,
      );
}
