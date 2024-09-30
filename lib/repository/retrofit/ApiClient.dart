import 'package:dio/dio.dart';
import '../../model/ev_station.dart';
import 'ev_service.dart';

class ApiClient {
  late Dio _dio;
  late EVService _evService;

  ApiClient() {
    _dio = Dio();
    _evService = EVService(_dio);
  }

  Future<List<EVStation>> fetchStations(String apiKey, int page, int perPage) {
    return _evService.getEVStations(apiKey, page, perPage);
  }
}
