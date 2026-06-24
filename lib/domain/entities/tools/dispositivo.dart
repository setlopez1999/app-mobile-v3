class Dispositivo {
  final String mac;
  final String nombre;
  final String ipLocal;
  final String tipo;
  final bool conectado;

  const Dispositivo({
    required this.mac,
    required this.nombre,
    required this.ipLocal,
    required this.tipo,
    required this.conectado,
  });

  factory Dispositivo.fromJson(Map<String, dynamic> json) => Dispositivo(
        mac: json['mac'] as String,
        nombre: json['nombre'] as String,
        ipLocal: json['ip_local'] as String,
        tipo: json['tipo'] as String,
        conectado: json['conectado'] as bool,
      );

  Map<String, dynamic> toJson() => {
        'mac': mac,
        'nombre': nombre,
        'ip_local': ipLocal,
        'tipo': tipo,
        'conectado': conectado,
      };

  Dispositivo copyWith({
    String? mac,
    String? nombre,
    String? ipLocal,
    String? tipo,
    bool? conectado,
  }) =>
      Dispositivo(
        mac: mac ?? this.mac,
        nombre: nombre ?? this.nombre,
        ipLocal: ipLocal ?? this.ipLocal,
        tipo: tipo ?? this.tipo,
        conectado: conectado ?? this.conectado,
      );
}
