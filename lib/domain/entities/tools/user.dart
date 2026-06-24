class User {
  final String clienteId;
  final String nombre;
  final String planContratado;
  final String email;
  final String telefono;

  const User({
    required this.clienteId,
    required this.nombre,
    required this.planContratado,
    required this.email,
    required this.telefono,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        clienteId: json['cliente_id'] as String,
        nombre: json['nombre'] as String,
        planContratado: json['plan_contratado'] as String,
        email: json['email'] as String,
        telefono: json['telefono'] as String,
      );

  Map<String, dynamic> toJson() => {
        'cliente_id': clienteId,
        'nombre': nombre,
        'plan_contratado': planContratado,
        'email': email,
        'telefono': telefono,
      };

  User copyWith({
    String? clienteId,
    String? nombre,
    String? planContratado,
    String? email,
    String? telefono,
  }) =>
      User(
        clienteId: clienteId ?? this.clienteId,
        nombre: nombre ?? this.nombre,
        planContratado: planContratado ?? this.planContratado,
        email: email ?? this.email,
        telefono: telefono ?? this.telefono,
      );
}
