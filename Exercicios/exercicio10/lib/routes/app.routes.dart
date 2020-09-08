import 'package:exercicio10/pages/brand_list.page.dart';
import 'package:exercicio10/pages/favorite.page.dart';
import 'package:exercicio10/pages/fipe.page.dart';
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
    FipePage.route: (BuildContext context) => FipePage(ModalRoute.of(context).settings.arguments),
    FavoritePage.route: (BuildContext context) => FavoritePage(),
  };
}

