import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final ValueChanged<String> onSubmitted;
  final String hintText;

  const SearchInput({@required this.onSubmitted, @required this.hintText})
      : assert(onSubmitted != null);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        icon: Icon(Icons.search),
        hintText: hintText,
      ),
    );
  }
}
