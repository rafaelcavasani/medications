import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final InputBorder border;
  final bool obscuredText;
  final Icon prefixIcon;
  final Function onSubmitted;
  final TextStyle labelStyle;
  final Color colorText;
  final Color colorEnabledBorder;
  final Color colorFocusedBorder;
  final Color colorStyle;

  CustomTextField({
    @required this.labelText,
    @required this.controller,
    this.border = const OutlineInputBorder(),
    this.obscuredText = false,
    this.prefixIcon,
    this.onSubmitted,
    this.labelStyle,
    this.colorText,
    this.colorEnabledBorder,
    this.colorFocusedBorder,
    this.colorStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscuredText,
      style: TextStyle(color: this.colorStyle ?? Colors.white),
      decoration: InputDecoration(
        hintText: labelText,
        hintStyle: labelStyle,
        prefixIcon: prefixIcon,
      ),
      controller: controller,
      onSubmitted: onSubmitted,
    );
  }
}
