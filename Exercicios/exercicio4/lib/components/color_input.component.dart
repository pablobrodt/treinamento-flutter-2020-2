import 'package:exercicio4/utils/color.util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorInput extends StatelessWidget {
  Color color;
  TextEditingController controller;

  ColorInput({this.color, this.controller});

  String _validateColor(String hex) {
    try {
      ColorUtils.validateHex(hex);

      return null;
    } catch(error) {
      return 'Cor inválida';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: TextFormField(
        controller: controller,
        decoration: new InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
        validator: _validateColor,
      ),
    );
  }
}
