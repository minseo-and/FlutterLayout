import 'package:bloc/bloc.dart';
import '../../repository/retrofit/ApiClient.dart';
import 'ev_station_event.dart';
import 'ev_station_state.dart';

class EVStationBloc extends Bloc<EVStationEvent, EVStationState> {
  final ApiClient apiClient;

  EVStationBloc(this.apiClient) : super(EVStationInitial());

  @override
  Stream<EVStationState> mapEventToState(EVStationEvent event) async* {
    if (event is FetchEVStations) {
      yield EVStationLoading();
      try {
        final stations = await apiClient.fetchStations(event.apiKey, 1, 10);
        yield EVStationLoaded(stations);
      } catch (e) {
        yield EVStationError("Failed to fetch stations.");
      }
    }
  }
}
