import 'package:exercicio_5/pages/register.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const route = '/login';

  TextEditingController _emailController = TextEditingController();

  _goToRegister(BuildContext context) {
    Navigator.of(context).pushNamed(
      RegisterPage.route,
      arguments: RegisterPageArgs(
        email: _emailController.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 98),
            Text(
              'Login',
              style: TextStyle(
                fontSize: 34,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 48),
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email Address',
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                  onTap: () => _goToRegister(context),
                  child: Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 38),
            CupertinoButton(
              onPressed: () => print('teste'),
              color: Color(0xFFE83F3F),
              borderRadius: BorderRadius.all(Radius.circular(2)),
              child: Text(
                'Continue',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
