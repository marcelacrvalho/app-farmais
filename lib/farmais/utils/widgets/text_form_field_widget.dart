import 'package:flutter/material.dart';

class MyTextFormFieldWidget extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;

  const MyTextFormFieldWidget({Key? key, required this.hint, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.bodySmall,
        labelStyle: Theme.of(context).textTheme.bodyLarge,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
