abstract class AuthenticationState {}

class AuthenticationLoadingState extends AuthenticationState {}

class AuthenticationErrorState extends AuthenticationState {
  final String message;

  AuthenticationErrorState({required this.message});
}

class AuthenticationLoadedState extends AuthenticationState {
  final String userToken;

  AuthenticationLoadedState({required this.userToken});
}
