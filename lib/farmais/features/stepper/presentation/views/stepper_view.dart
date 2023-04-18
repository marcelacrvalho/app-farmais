import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../values/strings.dart';
import '../../../../utils/widgets/elevated_button_widget.dart';
import '../../../../utils/widgets/text_body_widget.dart';

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
            const Expanded(child: MyTextBodyWidget(text: about)),
            Expanded(
              flex: 3,
              child: SvgPicture.asset('assets/images/step-image.svg'),
            ),
            const Expanded(
              flex: 2,
              child: Divider(),
            ),
            MyElevatedButtonWidget.widthInfinity(
              textButton: 'Prosseguir',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
