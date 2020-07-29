import 'package:flutter/material.dart';

class CustomMenuItem extends StatelessWidget {
  final String text;
  final Icon icon;
  final Function onTap;

  CustomMenuItem(
      {@required this.text, @required this.icon, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      leading: icon,
      onTap: onTap,
    );
  }
}
