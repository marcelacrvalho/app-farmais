abstract class AuthenticationEvent {}
class AuthenticateUser extends AuthenticationEvent {}
class LoadAuthentication extends AuthenticationEvent {}
class ErrorAuthentication extends AuthenticationEvent {}