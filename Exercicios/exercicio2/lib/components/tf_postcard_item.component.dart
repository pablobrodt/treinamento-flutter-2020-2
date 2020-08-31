import 'package:exercicio2/components/tf_text.component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TFPostcardItem extends StatelessWidget {
  Color iconBackgroundColor;
  IconData icon;
  Color iconColor;
  String title;
  String text;

  TFPostcardItem({
    @required this.iconBackgroundColor,
    @required this.icon,
    this.iconColor = Colors.white,
    @required this.title,
    @required this.text,
  }) :
  assert (iconBackgroundColor != null),
  assert (icon != null),
  assert (title != null),
  assert (text != null);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: iconBackgroundColor),
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
        SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TFText(title,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 6),
              TFText(text),
            ],
          ),
        ),
      ],
    );
  }
}
