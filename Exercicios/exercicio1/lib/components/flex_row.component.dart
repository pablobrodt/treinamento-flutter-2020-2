import 'package:flutter/cupertino.dart';

class FlexRow extends StatelessWidget {
  List<Widget> children;
  int flex;

  FlexRow({@required this.children, this.flex = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Row(children: children),
    );
  }
}
