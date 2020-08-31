import 'package:flutter/cupertino.dart';

class TFFlexRow extends StatelessWidget {
  final List<Widget> children;

  TFFlexRow(this.children);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Row(
        children: children,
      ),
    );
  }
}
