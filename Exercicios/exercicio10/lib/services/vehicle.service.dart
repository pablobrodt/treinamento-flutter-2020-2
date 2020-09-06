import 'package:dio/dio.dart';
import 'package:exercicio10/enums/vehicle.enum.dart';
import 'package:exercicio10/models/vehicle.model.dart';

import 'http.service.dart';

class VehicleService {
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

  static Future<List<VehicleModel>> getVehicleList(Vehicle vehicle, int brandId) async {
    String vehicleString = _vehicleToString(vehicle);
    String endpoint = '/$vehicleString/veiculos/$brandId.json';

    Response response = await HttpService.get(endpoint);

    List<VehicleModel> vehicles = (response.data as List).map((e) => VehicleModel.fromJson(e)).toList();

    return vehicles;
  }
}
