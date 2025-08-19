import 'package:caching/core/constants/api_constants.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  ApiService(this.dio);

  Future<Map<String, dynamic>> get() async {
    var response = await dio.get(EnvironmentVariables.getProduct);
    return response.data["products"];
  }
}
