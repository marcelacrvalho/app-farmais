import 'dart:async';

import 'authentication_event.dart';
import 'authentication_state.dart';

class AuthenticationBloc{
  //instanciar o domain
  final _inputAuthenticationController = StreamController<AuthenticationEvent>();
  final _outputAuthenticationState = StreamController<AuthenticationState>();

  Sink<AuthenticationEvent> get inputAuthentication => _inputAuthenticationController.sink;
  Stream<AuthenticationState> get outputAuthenticationState => _outputAuthenticationState.stream;

  AuthenticationBloc() {
    _inputAuthenticationController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(AuthenticationEvent event) {
    if(event is LoadAuthentication) {
      // chamar domain.login(celphone.text, password.text)
    } else if (event is AuthenticateUser) {
      toHomeView();
    } else {

    }
  }

  void toHomeView(){}
}