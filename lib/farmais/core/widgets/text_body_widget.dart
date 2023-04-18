import 'package:flutter/material.dart';

class MyTextBodyWidget extends StatelessWidget {
  final String text;
  final bool? isBodyLarge;
  const MyTextBodyWidget({
    Key? key,
    required this.text,
    this.isBodyLarge = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isBodyLarge!
          ? Theme.of(context).textTheme.bodyLarge
          : Theme.of(context).textTheme.bodySmall,
    );
  }
}
