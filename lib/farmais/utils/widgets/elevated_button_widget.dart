import 'package:flutter/material.dart';

typedef OnPressedFunction = void Function();

class MyElevatedButtonWidget extends StatelessWidget {
  final String textButton;
  final OnPressedFunction onPressed;
  final double? width;
  
  const MyElevatedButtonWidget.widthInfinity({
    Key? key,
    required this.textButton,
    required this.onPressed,
    this.width,
  }) : super(key: key);

  const MyElevatedButtonWidget.widthDefined({
    Key? key,
    required this.textButton,
    required this.onPressed,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width?? double.infinity,
      height: MediaQuery.of(context).size.height * 0.07,
      child: ElevatedButton(
        onPressed: () {},
        style: Theme.of(context).elevatedButtonTheme.style,
        child: Text(textButton),
      ),
    );
  }
}
