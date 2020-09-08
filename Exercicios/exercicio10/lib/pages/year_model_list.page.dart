import 'package:exercicio10/enums/vehicle.enum.dart';
import 'package:exercicio10/models/brand.model.dart';
import 'package:exercicio10/models/fipe.model.dart';
import 'package:exercicio10/models/vehicle.model.dart';
import 'package:exercicio10/models/year_model.model.dart';
import 'package:exercicio10/pages/fipe.page.dart';
import 'package:exercicio10/services/fipe.service.dart';
import 'package:exercicio10/services/year_model.service.dart';
import 'package:exercicio10/widgets/button_list.widget.dart';
import 'package:exercicio10/widgets/loader.widget.dart';
import 'package:exercicio10/widgets/search_input.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YearModelListPageArgs {
  final Vehicle vehicleType;
  final Brand brand;
  final VehicleModel vehicle;

  YearModelListPageArgs(
      {@required this.vehicleType,
      @required this.brand,
      @required this.vehicle})
      : assert(vehicleType != null),
        assert(brand != null),
        assert(vehicle != null);
}

class YearModelListPage extends StatefulWidget {
  static const route = '/year-model-list';

  final YearModelListPageArgs args;

  YearModelListPage(this.args);

  @override
  _YearModelListPageState createState() => _YearModelListPageState(args);
}

class _YearModelListPageState extends State<YearModelListPage> {
  List<YearModel> yearModels = List<YearModel>();
  List<YearModel> filteredYearModels = List<YearModel>();

  final YearModelListPageArgs args;

  _YearModelListPageState(this.args);

  @override
  void initState() {
    super.initState();

    _getYearModels();
  }

  _getYearModels() async {
    int brandId = args.brand.id;
    int vehicleId = args.vehicle.id;

    yearModels = await YearModelService.getYearModelList(
        args.vehicleType, brandId, vehicleId);

    filteredYearModels = yearModels;

    setState(() {});
  }

  _findVehicle(String term) {
    setState(() {
      filteredYearModels = yearModels.where((vehicle) {
        String lowercasedVehicleName = vehicle.name.toLowerCase();
        String lowercasedTerm = term.toLowerCase();

        return lowercasedVehicleName.contains(lowercasedTerm);
      }).toList();

      filteredYearModels.forEach((element) => print(element.name));
    });
  }

  _goToFipe(YearModel yearModel) {
    Navigator.of(context).pushNamed(
      FipePage.route,
      arguments: FipePageArgs(
          vehicleType: args.vehicleType,
          brandId: args.brand.id,
          vehicleId: args.vehicle.id,
          yearModelId: yearModel.id),
    );
  }

  Widget _buildList() {
    if (filteredYearModels.length <= 0) {
      return Loader();
    }

    return ButtonList<YearModel>(
      items: filteredYearModels,
      onButtonPressed: _goToFipe,
      getButtonLabel: (yearModel) => yearModel.name,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${args.brand.name} ${args.vehicle.name}'),
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
                hintText: 'Buscar por ${args.vehicle.name}',
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
