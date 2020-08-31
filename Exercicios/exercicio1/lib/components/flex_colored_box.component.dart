import 'package:flutter/cupertino.dart';

class FlexColoredBox extends StatelessWidget {
  Color color;
  int flex;

  FlexColoredBox({@required this.color, this.flex = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(color: color),
    );
  }
}
