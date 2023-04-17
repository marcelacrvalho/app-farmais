import '../../../../utils/entities/token_entity.dart';
import '../../../../utils/entities/user_entity.dart';

abstract class AuthenticationState {}

class AuthenticationInitialState extends AuthenticationState {
  AuthenticationInitialState();
}

class AuthenticationSuccessState extends AuthenticationState {
  final UserEntity user;
  final TokenEntity token;

  AuthenticationSuccessState({required this.user, required this.token});
}

class AuthenticationErrorState extends AuthenticationState {
  final String message;

  AuthenticationErrorState({required this.message});
}
