
import 'token_entity.dart';

class UserEntity {
  final String cellphone;
  final String password;
  final String name;
  final String city;
  final String street;
  final String neighborhood;
  final String number;
  final TokenEntity token;

  UserEntity({
    required this.cellphone,
    required this.password,
    required this.name,
    required this.city,
    required this.street,
    required this.neighborhood,
    required this.number,
    required this.token,
});
}