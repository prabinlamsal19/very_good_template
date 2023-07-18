import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  // ignore: lines_longer_than_80_chars
  const TextFieldWidget({
    required this.labelText,
    required this.obscureText,
    required this.controller,
    super.key,
  });
  final String labelText;
  final bool obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
