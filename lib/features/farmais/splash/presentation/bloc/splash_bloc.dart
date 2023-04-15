import 'package:flutter/material.dart';

import '../../domain/usecase.dart';

class SplashBloc {

  void isAuthenticate(){} //TODO: checar se o usuário tem um SHARED PREFERENCES

  void openAuthenticationView(BuildContext context){
    Navigator.pushNamed(context, '/authentication');
  }
}