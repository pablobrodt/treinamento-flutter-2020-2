import 'package:exercicio4/components/color_input.component.dart';
import 'package:exercicio4/utils/color.util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _color1Controller = TextEditingController();
  TextEditingController _color2Controller = TextEditingController();
  TextEditingController _color3Controller = TextEditingController();

  Color color1 = Colors.lightBlueAccent;
  Color color2 = Colors.greenAccent;
  Color color3 = Colors.orangeAccent;

  _updateColors() {
    if (_formKey.currentState.validate()) {
      setState(() {
        color1 = ColorUtils.fromHex(_color1Controller.text);
        color2 = ColorUtils.fromHex(_color2Controller.text);
        color3 = ColorUtils.fromHex(_color3Controller.text);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ColorInput(
                color: color1,
                controller: _color1Controller,
              ),
            ),
            Expanded(
              flex: 1,
              child: ColorInput(
                color: color2,
                controller: _color2Controller,
              ),
            ),
            Expanded(
              flex: 1,
              child: ColorInput(
                color: color3,
                controller: _color3Controller,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
              child: Container(
                width: double.infinity,
                child: CupertinoButton(
                  onPressed: _updateColors,
                  child: Text('Atualizar'),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}