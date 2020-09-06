import 'package:dio/dio.dart';
import 'package:exercicio10/enums/vehicle.enum.dart';
import 'package:exercicio10/models/brand.model.dart';

import 'http.service.dart';

class BrandService {
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

  static Future<List<Brand>> getBrandList(Vehicle vehicle) async {
    String vehicleString = _vehicleToString(vehicle);
    String endpoint = '/$vehicleString/marcas.json';

    Response response = await HttpService.get(endpoint);

    List<Brand> brands = (response.data as List).map((e) => Brand.fromJson(e)).toList();

    return brands;
  }
}
