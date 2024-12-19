import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String? hintText;
  final bool? obscureText;
  final TextInputType textInputType;
  InputField(
      {super.key,
      this.hintText = "",
      this.textInputType = TextInputType.text,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
          obscureText: obscureText ?? false,
          keyboardType: textInputType,
          decoration: InputDecoration(
            hintText: hintText,
          ).applyDefaults(Theme.of(context).inputDecorationTheme)),
    );
  }
}
