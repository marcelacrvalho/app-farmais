import 'package:flutter/material.dart';

import '../../../../utils/widgets/elevated_button_widget.dart';

/// [it comes after StepperView and it is showed once while user realm is valid]
class AuthenticationView extends StatelessWidget {
  const AuthenticationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        MyElevatedButtonWidget.widthInfinity(
          textButton: 'Entrar',
          onPressed: () {},
        ),
      ],
    );
  }
}
