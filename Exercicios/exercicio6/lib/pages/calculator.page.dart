import 'package:exercicio_6_calculadora/components/tf_flex_row.component.dart';
import 'package:exercicio_6_calculadora/components/tf_round_button.component.dart';
import 'package:exercicio_6_calculadora/components/tf_text.component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 34, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: TFText(
              text: '0',
              fontSize: 94,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TFFlexRow(
                  <Widget>[
                    TFRoundButton(
                      onPressed: () => {},
                      text: 'AC',
                      backgroundColor: Color(0xFFAFAFAF),
                      color: Colors.black,
                    ),
                    SizedBox(width: 14),
                    TFRoundButton(
                      onPressed: () => {},
                      text: '+/-',
                      backgroundColor: Color(0xFFAFAFAF),
                      color: Colors.black,
                    ),
                    SizedBox(width: 14),
                    TFRoundButton(
                      onPressed: () => {},
                      text: '%',
                      backgroundColor: Color(0xFFAFAFAF),
                      color: Colors.black,
                    ),
                    SizedBox(width: 14),
                    TFRoundButton(
                      onPressed: () => {},
                      text: '/',
                      backgroundColor: Color(0xFFFF9500),
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 14),
                TFFlexRow(
                  <Widget>[
                    TFRoundButton(
                      onPressed: () => {},
                      text: '7',
                      backgroundColor: Color(0xFF333333),
                      color: Colors.white,
                    ),
                    SizedBox(width: 14),
                    TFRoundButton(
                      onPressed: () => {},
                      text: '8',
                      backgroundColor: Color(0xFF333333),
                      color: Colors.white,
                    ),
                    SizedBox(width: 14),
                    TFRoundButton(
                      onPressed: () => {},
                      text: '9',
                      backgroundColor: Color(0xFF333333),
                      color: Colors.white,
                    ),
                    SizedBox(width: 14),
                    TFRoundButton(
                      onPressed: () => {},
                      text: 'x',
                      backgroundColor: Color(0xFFFF9500),
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 14),
                TFFlexRow(
                  <Widget>[
                    TFRoundButton(
                      onPressed: () => {},
                      text: '4',
                      backgroundColor: Color(0xFF333333),
                      color: Colors.white,
                    ),
                    SizedBox(width: 14),
                    TFRoundButton(
                      onPressed: () => {},
                      text: '5',
                      backgroundColor: Color(0xFF333333),
                      color: Colors.white,
                    ),
                    SizedBox(width: 14),
                    TFRoundButton(
                      onPressed: () => {},
                      text: '6',
                      backgroundColor: Color(0xFF333333),
                      color: Colors.white,
                    ),
                    SizedBox(width: 14),
                    TFRoundButton(
                      onPressed: () => {},
                      text: '-',
                      backgroundColor: Color(0xFFFF9500),
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 14),
                TFFlexRow(
                  <Widget>[
                    TFRoundButton(
                      onPressed: () => {},
                      text: '1',
                      backgroundColor: Color(0xFF333333),
                      color: Colors.white,
                    ),
                    SizedBox(width: 14),
                    TFRoundButton(
                      onPressed: () => {},
                      text: '2',
                      backgroundColor: Color(0xFF333333),
                      color: Colors.white,
                    ),
                    SizedBox(width: 14),
                    TFRoundButton(
                      onPressed: () => {},
                      text: '3',
                      backgroundColor: Color(0xFF333333),
                      color: Colors.white,
                    ),
                    SizedBox(width: 14),
                    TFRoundButton(
                      onPressed: () => {},
                      text: '+',
                      backgroundColor: Color(0xFFFF9500),
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 14),
                TFFlexRow(
                  <Widget>[
                    TFFlexRow(
                      <Widget>[
                        TFRoundButton(
                          onPressed: () => {},
                          text: '0',
                          backgroundColor: Color(0xFF333333),
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(width: 14),
                    TFFlexRow(
                      <Widget>[
                        TFRoundButton(
                          onPressed: () => {},
                          text: ',',
                          backgroundColor: Color(0xFF333333),
                          color: Colors.white,
                        ),
                        SizedBox(width: 14),
                        TFRoundButton(
                          onPressed: () => {},
                          text: '=',
                          backgroundColor: Color(0xFFFF9500),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
