import 'package:exercicio_6_calculadora/components/tf_text.component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TFRoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;
  final Color color;

  TFRoundButton({this.onPressed, this.text, this.backgroundColor, this.color});

  _handlePress() {
    this.onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: LayoutBuilder(builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: constraints.maxWidth,
            maxWidth: constraints.maxWidth,
            minHeight: constraints.minWidth,
            maxHeight: constraints.maxWidth,
          ),
          child: CupertinoButton(
            onPressed: _handlePress,
            color: this.backgroundColor,
            borderRadius: BorderRadius.all(
              Radius.circular(constraints.maxHeight / 2),
            ),
            padding: EdgeInsets.all(0),
            child: TFText(
              text: this.text,
              fontSize: 30,
              color: this.color,
            ),
          ),
        );
      }),
    );
  }
}
