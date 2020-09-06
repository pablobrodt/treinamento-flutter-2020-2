import 'package:exercicio10/pages/brand_list.page.dart';
import 'package:exercicio10/pages/home.page.dart';
import 'package:exercicio10/pages/vehicle_list.page.dart';
import 'package:exercicio10/pages/year_model_list.page.dart';
import 'package:exercicio10/routes/app.routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: AppRoutes.routes,
      home: HomePage(),
    );
  }
}
