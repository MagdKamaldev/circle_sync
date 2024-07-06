import 'package:circle_sync/core/networks/api_constants.dart';
import 'package:circle_sync/features/login/data/models/login_request_body.dart';
import 'package:circle_sync/features/login/data/models/login_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'api_services.g.dart';


@RestApi(baseUrl: ApiConstants.apiBASEURL)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  
  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

}