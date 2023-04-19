import 'package:farmais/farmais/core/entities/user_entity.dart';

abstract class AuthenticationEvent {}

class LoadAuthentication extends AuthenticationEvent {}

class AuthenticateUser extends AuthenticationEvent {
  UserEntity user;

  AuthenticateUser({required this.user});
}

class ErrorAuthentication extends AuthenticationEvent {}
