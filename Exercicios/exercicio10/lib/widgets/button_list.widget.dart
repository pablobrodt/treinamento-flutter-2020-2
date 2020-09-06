import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonList<T> extends StatelessWidget {
  List<T> items;
  final Function(T item) onButtonPressed;
  final String Function(T item) getButtonLabel;

  ButtonList(
      {@required this.items, @required this.onButtonPressed, @required this.getButtonLabel})
      : assert(items != null && items.length > 0),
        assert(onButtonPressed != null),
        assert(getButtonLabel != null);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return RaisedButton(
            onPressed: () => onButtonPressed(items[index]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(getButtonLabel(items[index])),
              ],
            ),
            color: Colors.white,
            padding: EdgeInsets.all(18),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 16),
      ),
    );
  }
}
