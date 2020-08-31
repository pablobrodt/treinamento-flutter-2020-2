import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TFText extends StatelessWidget {
  Color color;
  String text;
  double fontSize;

  TFText({this.text, this.fontSize, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}
