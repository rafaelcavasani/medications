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
    this.color = const Color.fromRGBO(255, 255, 255, 1),
    this.fontColor = const Color.fromRGBO(122, 44, 150, 1),
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
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: BorderSide(color: Colors.white)),
          child: Text(text,
              style: TextStyle(
                  color: fontColor,
                  fontSize: fontSize,
                  fontWeight: fontWeight)),
          onPressed: onPressed,
        ));
  }
}
