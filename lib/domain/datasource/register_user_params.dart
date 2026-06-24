class RegisterUserParams {
  RegisterUserParams({
    required this.firstName,
    required this.lastName,
    required this.dni,
    required this.phoneNumber,
    required this.email,
  });

  final String firstName;
  final String lastName;
  final String dni;
  final String phoneNumber;
  final String email;
}
