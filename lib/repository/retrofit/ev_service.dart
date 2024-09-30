import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../model/ev_station.dart';

part 'ev_service.g.dart';

@RestApi(baseUrl: "https://api.data.go.kr/")
abstract class EVService {
  factory EVService(Dio dio, {String baseUrl}) = _EVService;

  @GET("v2/charging-stations")
  Future<List<EVStation>> getEVStations(
      @Query("apiKey") String apiKey,
      @Query("page") int page,
      @Query("perPage") int perPage,
      );
}
