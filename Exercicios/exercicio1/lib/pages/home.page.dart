import 'package:exercicio1/components/flex_colored_box.component.dart';
import 'package:exercicio1/components/flex_row.component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          FlexRow(
            children: <Widget>[
              FlexColoredBox(color: Colors.purple[100]),
              FlexColoredBox(color: Colors.purple[200]),
              FlexColoredBox(color: Colors.purple[300]),
            ],
          ),
          FlexRow(
            flex: 2,
            children: <Widget>[
              FlexColoredBox(color: Colors.red[100]),
              FlexColoredBox(color: Colors.red[200]),
            ],
          ),
          FlexRow(
            flex: 3,
            children: <Widget>[
              FlexColoredBox(color: Colors.green[100]),
              FlexColoredBox(color: Colors.green[200]),
              FlexColoredBox(color: Colors.green[300]),
              FlexColoredBox(color: Colors.green[400]),
            ],
          ),
        ],
      ),
    );
  }
}
