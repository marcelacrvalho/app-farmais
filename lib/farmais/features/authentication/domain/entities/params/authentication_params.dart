class AuthenticationParams {
  final String cellPhone;
  final String password;
  final String city;
  final String street;
  final String neighborhood;
  final String number;

  const AuthenticationParams({
    required this.cellPhone,
    required this.password,
    required this.city,
    required this.street,
    required this.neighborhood,
    required this.number,
  });
}
