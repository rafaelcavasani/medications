import 'package:flutter/material.dart';

class CustomSearchReturnText extends StatelessWidget {
  final String text;
  CustomSearchReturnText({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          this.text,
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
