import 'package:circle_sync/core/networks/api_constants.dart';
import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio;
  ApiServices(this._dio);

  Future<Map<String, dynamic>> get({
    required String endPoint,
    String? jwt,
    dynamic data,
  }) async {
    _dio.options.headers = {
      "Authorization": "Bearer $jwt",
      "Content-Type": "application/json",
    };
    var response =
        await _dio.get("${ApiConstants.apiBASEURL}$endPoint", data: data);
    return response.data;
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    required dynamic data,
    String? jwt,
  }) async {
    _dio.options.headers = {
      "Authorization": "Bearer $jwt",
      "Content-Type": "application/json",
    };
    var response =
        await _dio.post("${ApiConstants.apiBASEURL}$endPoint", data: data);
    return response.data;
  }


  Future<Map<String, dynamic>> put({
    required String endPoint,
    dynamic data,
    String? jwt,
  }) async {
    _dio.options.headers = {
      "Authorization": "Bearer $jwt",
      "Content-Type": "application/json",
    };
    var response =
        await _dio.put("${ApiConstants.apiBASEURL}$endPoint", data: data);
    return response.data;
  }

  Future<Map<String, dynamic>> delete({
    required String endPoint,
    String? jwt,
  }) async {
    _dio.options.headers = {
      "Authorization": "Bearer $jwt",
      "Content-Type": "application/json",
    };
    var response = await _dio.delete("${ApiConstants.apiBASEURL}$endPoint");
    return response.data;
  }
}