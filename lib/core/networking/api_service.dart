import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:sallihli/core/networking/api_constants.dart';
import 'package:sallihli/features/Client_Home/data/model/model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @GET(ApiConstants.user)
  Future<List<Model>> getModel();


}
