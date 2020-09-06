import 'package:exercicio10/enums/vehicle.enum.dart';
import 'package:exercicio10/models/brand.model.dart';
import 'package:exercicio10/models/vehicle.model.dart';
import 'package:exercicio10/services/vehicle.service.dart';
import 'package:exercicio10/widgets/button_list.widget.dart';
import 'package:exercicio10/widgets/loader.widget.dart';
import 'package:exercicio10/widgets/search_input.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VehicleListPageArgs {
  final Vehicle vehicleType;
  final Brand brand;

  VehicleListPageArgs({@required this.vehicleType, @required this.brand})
      : assert(vehicleType != null),
        assert(brand != null);
}

class VehicleListPage extends StatefulWidget {
  static const route = '/vehicle-list';

  final VehicleListPageArgs args;

  VehicleListPage(this.args);

  @override
  _VehicleListPageState createState() => _VehicleListPageState(brand: args.brand, vehicleType: args.vehicleType);
}

class _VehicleListPageState extends State<VehicleListPage> {
  final Vehicle vehicleType;
  final Brand brand;

  List<VehicleModel> vehicles = List<VehicleModel>();
  List<VehicleModel> filteredVehicles = List<VehicleModel>();

  _VehicleListPageState({@required this.brand, @required this.vehicleType});

  @override
  void initState() {
    super.initState();

    _getVehicles();
  }

  _getVehicles() async {
    vehicles = await VehicleService.getVehicleList(vehicleType, brand.id);

    filteredVehicles = vehicles;

    setState(() {});
  }

  _findVehicle(String term) {
    setState(() {
      filteredVehicles = vehicles.where((vehicle) {
        String lowercasedVehicleName = vehicle.name.toLowerCase();
        String lowercasedTerm = term.toLowerCase();

        return lowercasedVehicleName.contains(lowercasedTerm);
      }).toList();

      filteredVehicles.forEach((element) => print(element.name));
    });
  }

  Widget _buildList() {
    if (filteredVehicles.length <= 0) {
      return Loader();
    }

    return ButtonList<VehicleModel>(
      items: filteredVehicles,
      onButtonPressed: (vehicle) {
        print(vehicle.name);
      },
      getButtonLabel: (vehicle) {
        return vehicle.name;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(brand.name),
      ),
      body: Container(
        color: Color(0xFFF1F1F1),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Column(
            children: <Widget>[
              SearchInput(
                onSubmitted: (text) {
                  _findVehicle(text);
                },
                hintText: 'Buscar por ${brand.name}',
              ),
              SizedBox(height: 20),
              _buildList(),
            ],
          ),
        ),
      ),
    );
  }
}
