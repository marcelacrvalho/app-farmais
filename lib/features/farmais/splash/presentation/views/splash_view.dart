import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MySplashView extends StatelessWidget {
  const MySplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.5,
      child: SvgPicture.string('assets/images/icon.svg'),
    );
  }
}
