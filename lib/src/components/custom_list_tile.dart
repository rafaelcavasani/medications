import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String label;
  final String text;

  CustomListTile({this.label, this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(fontSize: 14),
      ),
      subtitle: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
