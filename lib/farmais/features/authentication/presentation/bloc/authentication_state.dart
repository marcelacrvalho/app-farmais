import '../../../../core/entities/error_entity.dart';
import '../../../../core/entities/user_entity.dart';

abstract class AuthenticationState {}

class AuthenticationInitialState extends AuthenticationState {}

class AuthenticationSuccessState extends AuthenticationState {
  final UserEntity user;

  AuthenticationSuccessState({required this.user});
}

class AuthenticationErrorState extends AuthenticationState {
  final ErrorEntity errorEntity;

  AuthenticationErrorState({required this.errorEntity});
}
