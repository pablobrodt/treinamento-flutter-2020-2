import 'package:exercicio_5/pages/login.page.dart';
import 'package:exercicio_5/pages/register.page.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    LoginPage.route: (BuildContext context) => LoginPage(),
    RegisterPage.route: (BuildContext context) => RegisterPage(ModalRoute.of(context).settings.arguments),
  };
}

