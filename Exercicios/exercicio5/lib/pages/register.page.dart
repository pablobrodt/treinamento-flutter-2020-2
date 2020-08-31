import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPageArgs {
  final String email;

  RegisterPageArgs({this.email});
}

class RegisterPage extends StatelessWidget {
  static const route = '/register';

  final RegisterPageArgs args;
  TextEditingController _emailController = TextEditingController();

  RegisterPage(this.args);

  @override
  Widget build(BuildContext context) {
    _emailController.text = this.args.email;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 30,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              'Register',
              style: TextStyle(
                fontSize: 34,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 48),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                      ),
                    ),
                    SizedBox(height: 35),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                      ),
                    ),
                    SizedBox(height: 35),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Mobile Number',
                      ),
                    ),
                    SizedBox(height: 35),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Country',
                      ),
                    ),
                    SizedBox(height: 35),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(height: 35),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                      ),
                    ),
                    SizedBox(height: 35),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Referal Code (Optional)',
                      ),
                    ),
                    SizedBox(height: 24),
                    CupertinoButton(
                      onPressed: () => print('teste'),
                      color: Color(0xFFE83F3F),
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
