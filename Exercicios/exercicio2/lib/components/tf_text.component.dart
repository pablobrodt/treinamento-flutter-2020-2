import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TFText extends StatelessWidget {
  Color color;
  String text;
  double fontSize;
  TextStyle style;

  TFText(this.text, { @required this.fontSize, this.color = Colors.black, this.style });

  TextStyle _getStyle() {
    if (style != null) {
      return style;
    } else {
      return TextStyle(
        color: color,
        fontSize: fontSize,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _getStyle(),
    );
  }
}
