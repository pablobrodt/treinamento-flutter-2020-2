import 'package:exercicio10/enums/vehicle.enum.dart';
import 'package:exercicio10/models/fipe.model.dart';
import 'package:exercicio10/services/fipe.service.dart';
import 'package:exercicio10/widgets/loader.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FipePageArgs {
  final Vehicle vehicleType;
  final int brandId;
  final int vehicleId;
  final String yearModelId;

  FipePageArgs({
    @required this.vehicleType,
    @required this.brandId,
    @required this.vehicleId,
    @required this.yearModelId,
  })
      : assert(vehicleType != null),
        assert(brandId != null),
        assert(vehicleId != null),
        assert(yearModelId != null);
}

class FipePage extends StatefulWidget {
  static const route = '/fipe';

  final FipePageArgs args;

  FipePage(this.args) : assert(args != null);

  @override
  _FipePageState createState() => _FipePageState(args);
}

class _FipePageState extends State<FipePage> {
  Fipe fipe;
  final FipePageArgs args;

  _FipePageState(this.args);

  @override
  void initState() {
    super.initState();

    _getFipe();
  }

  _getFipe() async {
    fipe = await FipeService.getFipe(
        args.vehicleType, args.brandId, args.vehicleId, args.yearModelId);

    setState(() {});
  }

  Widget _buildInformation(String label, String value) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(value),
        ],
      ),
    );
  }

  Widget _buildContent() {
    if (fipe == null) {
      return Loader();
    }

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildInformation('Referência:', fipe.referenceMonth),
          SizedBox(height: 10),
          _buildInformation('Marca:', fipe.brand),
          SizedBox(height: 10),
          _buildInformation('Modelo:', fipe.name),
          SizedBox(height: 10),
          _buildInformation('Ano:', fipe.yearModel),
          SizedBox(height: 10),
          _buildInformation('Combustível:', fipe.fuel),
          SizedBox(height: 10),
          _buildInformation('Valor:', fipe.price),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Fipe'),
      ),
      body: Container(
        color: Color(0xFFF1F1F1),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: _buildContent(),
        ),
      ),
    );
  }
}
