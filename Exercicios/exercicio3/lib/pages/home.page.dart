import 'package:exercicio3/components/tf_text.component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _countryController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _referalCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Register',
                style: TextStyle(
                  fontSize: 34,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 48),
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        labelStyle: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      controller: _nameController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter your name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 35),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textCapitalization: TextCapitalization.none,
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        labelStyle: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      controller: _emailController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter your name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 35),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      textCapitalization: TextCapitalization.none,
                      decoration: InputDecoration(
                        labelText: 'Mobile Phone',
                        labelStyle: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      controller: _phoneController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter your name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 35),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                        labelText: 'Country',
                        labelStyle: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      controller: _countryController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter your name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 35),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.none,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      controller: _passwordController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter your name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 35),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.none,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        labelStyle: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      controller: _confirmPasswordController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter your name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 35),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      textCapitalization: TextCapitalization.none,
                      decoration: InputDecoration(
                        labelText: 'Referal Code (Optional)',
                        labelStyle: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      controller: _referalCodeController,
                    ),
                    SizedBox(height: 24),
                    CupertinoButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xFFE83F3F),
                        ),
                        width: double.infinity,
                        height: 50,
                        child: Center(
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
