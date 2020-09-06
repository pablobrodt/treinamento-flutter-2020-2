import 'package:exercicio10/enums/vehicle.enum.dart';
import 'package:exercicio10/models/year_model.model.dart';
import 'package:exercicio10/services/year_model.service.dart';
import 'package:exercicio10/widgets/button_list.widget.dart';
import 'package:exercicio10/widgets/loader.widget.dart';
import 'package:exercicio10/widgets/search_input.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YearModelListPage extends StatefulWidget {
  static const route = '/year-model-list';

  @override
  _YearModelListPageState createState() => _YearModelListPageState();
}

class _YearModelListPageState extends State<YearModelListPage> {
  List<YearModel> yearModels = List<YearModel>();
  List<YearModel> filteredYearModels = List<YearModel>();

  @override
  void initState() {
    super.initState();

    _getYearModels();
  }

  _getYearModels() async {
    yearModels = await YearModelService.getYearModelList(Vehicle.CAR, 21, 4828);

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

  Widget _buildList() {
    if (filteredYearModels.length <= 0) {
      return Loader();
    }

    return ButtonList<YearModel>(
      items: filteredYearModels,
      onButtonPressed: (yearModel) {
        print(yearModel.name);
      },
      getButtonLabel: (yearModel) {
        return yearModel.name;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('[Nome do veiculo]'),
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
                hintText: 'Buscar por [nome do veiculo]',
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
