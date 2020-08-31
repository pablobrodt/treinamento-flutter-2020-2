import 'dart:ffi';

import 'package:exercicio2/components/tf_text.component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TFButton extends StatelessWidget {
  Color textColor;
  Color backgroundColor;
  String text;

  TFButton(
      {@required this.textColor,
      @required this.backgroundColor,
      @required this.text})
      : assert(textColor != null),
        assert(backgroundColor != null),
        assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CupertinoButton(
        onPressed: () {},
        padding: EdgeInsets.all(10),
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4),
        child: TFText(
          text,
          color: textColor,
        ),
      ),
    );
  }
}
