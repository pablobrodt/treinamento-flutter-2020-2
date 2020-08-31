import 'package:exercicio2/components/tf_button.component.dart';
import 'package:exercicio2/components/tf_postcard_item.component.dart';
import 'package:exercicio2/components/tf_text.component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TFText(
          'Postcard',
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 15),
            TFPostcardItem(
              title: 'Recipient',
              text: 'Amelie N Mason',
              icon: Icons.person,
              iconBackgroundColor: Colors.pink,
            ),
            SizedBox(height: 30),
            TFPostcardItem(
              title: 'Message',
              text: '47 Greyfriars Roas, CAPHEATON United Kingdom NE19 5PJ',
              icon: Icons.business,
              iconBackgroundColor: Colors.orange,
            ),
            SizedBox(height: 30),
            TFPostcardItem(
              title: 'Message',
              text:
                  'A população ela precisa da Zona Franca de Manaus, porque na Zona franca de Manaus, não é uma zona de exportação, é uma zona para o Brasil. Portanto ela tem um objetivo, ela evita o desmatamento, que é altamente lucravito. Derrubar arvores da natureza é muito lucrativo!',
              icon: Icons.edit,
              iconBackgroundColor: Colors.lightBlueAccent,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TFButton(
                  text: 'SAVE DRAFT',
                  backgroundColor: Colors.grey,
                  textColor: Colors.white,
                ),
                SizedBox(width: 10),
                TFButton(
                  text: 'REVIEW DESIGN',
                  backgroundColor: Colors.pinkAccent,
                  textColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
