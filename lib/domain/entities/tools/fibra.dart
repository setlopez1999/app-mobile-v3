/// [estado] puede ser: "OK" | "FALLA" | "DEGRADADO"
class Fibra {
  final String potenciaDbm;
  final String estado;

  const Fibra({
    required this.potenciaDbm,
    required this.estado,
  });

  factory Fibra.fromJson(Map<String, dynamic> json) => Fibra(
        potenciaDbm: json['potencia_dbm'] as String,
        estado: json['estado'] as String,
      );

  Map<String, dynamic> toJson() => {
        'potencia_dbm': potenciaDbm,
        'estado': estado,
      };

  Fibra copyWith({String? potenciaDbm, String? estado}) =>
      Fibra(
        potenciaDbm: potenciaDbm ?? this.potenciaDbm,
        estado: estado ?? this.estado,
      );
}
