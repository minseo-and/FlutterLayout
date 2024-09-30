import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("{url}")
  Future<Response> getRequest(@Path("url") String url, @Queries() Map<String, dynamic> queries);

  @POST("{url}")
  Future<Response> postRequest(@Path("url") String url, @Body() Map<String, dynamic> body);

  @PUT("{url}")
  Future<Response> putRequest(@Path("url") String url, @Body() Map<String, dynamic> body);

  @DELETE("{url}")
  Future<Response> deleteRequest(@Path("url") String url);
}

