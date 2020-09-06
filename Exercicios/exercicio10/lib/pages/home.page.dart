import 'package:exercicio10/enums/vehicle.enum.dart';
import 'package:exercicio10/models/brand.model.dart';
import 'package:exercicio10/pages/brand_list.page.dart';
import 'package:exercicio10/services/brand.service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const route = '/home';

  _onCarButtonPressed(BuildContext context) async {
    _goToBrandList(context, Vehicle.CAR);
  }

  _onBikeButtonPressed(BuildContext context) async {
    _goToBrandList(context, Vehicle.MOTORCYCLE);
  }

  _onTruckButtonPressed(BuildContext context) async {
    _goToBrandList(context, Vehicle.TRUCK);
  }

  _onFavButtonPressed() {}

  _goToBrandList(BuildContext context, Vehicle vehicleType) {
    Navigator.of(context).pushNamed(
      BrandListPage.route,
      arguments: BrandListPageArgs(vehicleType: vehicleType),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Tabela Fipe', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: _onFavButtonPressed,
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            VehicleButton(
              text: 'Carros',
              icon: Icons.directions_car,
              onPressed: () => _onCarButtonPressed(context),
            ),
            VehicleButton(
              text: 'Motos',
              icon: Icons.directions_bike,
              onPressed: () => _onBikeButtonPressed(context),
            ),
            VehicleButton(
              text: 'Caminhões',
              icon: Icons.local_shipping,
              onPressed: () => _onTruckButtonPressed(context),
            ),
          ],
        ),
      ),
    );
  }
}

class VehicleButton extends StatelessWidget {
  VoidCallback onPressed;
  IconData icon;
  String text;

  VehicleButton(
      {@required this.onPressed, @required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: RaisedButton(
        onPressed: onPressed,
        textColor: Colors.white,
        color: Colors.lightBlueAccent,
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: <Widget>[
            Icon(icon),
            SizedBox(height: 8),
            Text(
              text,
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
