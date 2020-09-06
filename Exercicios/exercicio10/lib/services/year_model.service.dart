import 'package:dio/dio.dart';
import 'package:exercicio10/enums/vehicle.enum.dart';
import 'package:exercicio10/models/year_model.model.dart';

import 'http.service.dart';

class YearModelService {
  static String _vehicleToString(Vehicle vehicle) {
    switch (vehicle) {
      case Vehicle.CAR:
        return 'carros';
      case Vehicle.MOTORCYCLE:
        return 'motos';
      case Vehicle.TRUCK:
        return 'caminhoes';
    }
  }

  static Future<List<YearModel>> getYearModelList(Vehicle vehicle, int brandId, int vehicleModelId) async {
    String vehicleString = _vehicleToString(vehicle);
    String endpoint = '/$vehicleString/veiculo/$brandId/$vehicleModelId.json';

    Response response = await HttpService.get(endpoint);

    List<YearModel> yearModels = (response.data as List).map((e) => YearModel.fromJson(e)).toList();

    return yearModels;
  }
}
