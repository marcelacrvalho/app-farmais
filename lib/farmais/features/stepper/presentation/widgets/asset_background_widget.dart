import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

class MyAssetBackgroundWidget extends StatelessWidget {
  const MyAssetBackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Lottie.asset('assets/animations/circle_yellow.json'),
        SvgPicture.asset('assets/images/step-image.svg'),
      ],
    );
  }
}
