import 'package:farmais/values/strings.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/elevated_button_widget.dart';
import '../../../../core/widgets/text_form_field_widget.dart';

/// [it comes after StepperView and it is showed just once while user realm is valid]
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
        const MyTextFormFieldWidget(hint: hintCellphoneAuthenticationView),
        const MyTextFormFieldWidget(hint: hintPasswordAuthenticationView),
        const MyTextFormFieldWidget(hint: hintStreetAuthenticationView),
        const MyTextFormFieldWidget(hint: hintNumberAuthenticationView),
        MyElevatedButtonWidget.widthInfinity(
          textButton: 'Entrar',
          onPressed: () {},
        ),
      ],
    );
  }
}