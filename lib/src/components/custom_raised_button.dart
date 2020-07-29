import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final String text;
  final double heigth;
  final Color color;
  final Color fontColor;
  final double fontSize;
  final FontWeight fontWeight;
  final Function onPressed;

  CustomRaisedButton({
    @required this.text,
    @required this.onPressed,
    this.heigth = 50,
    this.color = const Color.fromRGBO(46, 94, 130, 1),
    this.fontColor = Colors.white,
    this.fontSize = 20,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: double.infinity,
        height: heigth,
        child: RaisedButton(
          color: color,
          child: Text(text,
              style: TextStyle(
                  color: fontColor,
                  fontSize: fontSize,
                  fontWeight: fontWeight)),
          onPressed: onPressed,
        ));
  }
}
