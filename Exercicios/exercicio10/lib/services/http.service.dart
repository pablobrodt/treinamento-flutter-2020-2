
import 'package:dio/dio.dart';

class HttpService {
  static final Dio dio = Dio()..options.baseUrl = 'https://fipeapi.appspot.com/api/1/';

  static Future<Response> get(String endpoint) async {
    return dio.get(endpoint);
  }
}