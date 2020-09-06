import 'package:exercicio10/pages/brand_list.page.dart';
import 'package:exercicio10/pages/home.page.dart';
import 'package:exercicio10/pages/vehicle_list.page.dart';
import 'package:exercicio10/pages/year_model_list.page.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    HomePage.route: (BuildContext context) => HomePage(),
    BrandListPage.route: (BuildContext context) => BrandListPage(ModalRoute.of(context).settings.arguments),
    VehicleListPage.route: (BuildContext context) => VehicleListPage(ModalRoute.of(context).settings.arguments),
    YearModelListPage.route: (BuildContext context) => YearModelListPage(ModalRoute.of(context).settings.arguments),

//    LoginPage.route: (BuildContext context) => LoginPage(),
//    RegisterPage.route: (BuildContext context) => RegisterPage(ModalRoute.of(context).settings.arguments),
  };
}

