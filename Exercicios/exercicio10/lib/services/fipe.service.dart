import 'package:dio/dio.dart';
import 'package:exercicio10/enums/vehicle.enum.dart';
import 'package:exercicio10/models/fipe.model.dart';

import 'http.service.dart';

class FipeService {
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

  static Future<Fipe> getFipe(Vehicle vehicle, int brandId, int vehicleModelId, String yearModelId) async {
    String vehicleString = _vehicleToString(vehicle);
    String endpoint = '/$vehicleString/veiculo/$brandId/$vehicleModelId/$yearModelId.json';

    Response response = await HttpService.get(endpoint);

    return Fipe.fromJson(response.data);
  }
}
