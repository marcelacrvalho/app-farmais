import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../values/strings.dart';
import '../../../../core/widgets/elevated_button_widget.dart';
import '../../../../core/widgets/text_body_widget.dart';

/// [it comes after SplashView if the user does not have a valid user realm]
class StepperView extends StatelessWidget {
  const StepperView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Expanded(
              child: MyTextBodyWidget(text: aboutStepperView),
            ),
            Expanded(
              flex: 3,
              child: SvgPicture.asset('assets/images/step-image.svg'),
            ),
            const Expanded(
              child: Divider(),
            ),
            MyElevatedButtonWidget.widthInfinity(
              textButton: buttonNextStepperView,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
