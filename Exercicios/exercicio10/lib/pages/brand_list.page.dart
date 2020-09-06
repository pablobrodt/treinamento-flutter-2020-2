import 'package:exercicio10/enums/vehicle.enum.dart';
import 'package:exercicio10/models/brand.model.dart';
import 'package:exercicio10/pages/vehicle_list.page.dart';
import 'package:exercicio10/services/brand.service.dart';
import 'package:exercicio10/widgets/button_list.widget.dart';
import 'package:exercicio10/widgets/loader.widget.dart';
import 'package:exercicio10/widgets/search_input.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrandListPageArgs {
  final Vehicle vehicleType;

  BrandListPageArgs({@required this.vehicleType})  : assert(vehicleType != null);
}

class BrandListPage extends StatefulWidget {
  static const route = '/brand-list';

  final BrandListPageArgs args;

  BrandListPage(this.args) : assert(args != null);

  @override
  _BrandListPageState createState() => _BrandListPageState(args.vehicleType);
}

class _BrandListPageState extends State<BrandListPage> {
  List<Brand> brands = List<Brand>();
  List<Brand> filteredBrands = List<Brand>();
  final Vehicle vehicleType;

  _BrandListPageState(this.vehicleType)  : assert(vehicleType != null);

  @override
  void initState() {
    super.initState();

    _getBrands();
  }

  _getBrands() async {
    brands = await BrandService.getBrandList(vehicleType);
    filteredBrands = brands;

    setState(() {});
  }

  _findBrand(String term) {
    setState(() {
      filteredBrands = brands.where((brand) {
        String lowercasedBrandName = brand.name.toLowerCase();
        String lowercasedTerm = term.toLowerCase();

        return lowercasedBrandName.contains(lowercasedTerm);
      }).toList();

      filteredBrands.forEach((element) => print(element.name));
    });
  }

  _goToVehicleList(BuildContext context, Brand brand) {
    Navigator.of(context).pushNamed(
      VehicleListPage.route,
      arguments: VehicleListPageArgs(vehicleType: vehicleType, brand: brand),
    );
  }

  Widget _buildList(BuildContext context) {
    if (filteredBrands.length <= 0) {
      return Loader();
    }

    return ButtonList<Brand>(
      items: filteredBrands,
      onButtonPressed: (brand) => _goToVehicleList(context, brand),
      getButtonLabel: (brand) => brand.name,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marcas'),
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
                  _findBrand(text);
                },
                hintText: 'Buscar por marca',
              ),
              SizedBox(height: 20),
              _buildList(context),
            ],
          ),
        ),
      ),
    );
  }
}
