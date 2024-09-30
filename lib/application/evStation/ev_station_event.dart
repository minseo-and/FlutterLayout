import '../../model/ev_station.dart';
import 'ev_station_state.dart';

abstract class EVStationEvent {}

class FetchEVStations extends EVStationEvent {
  final String apiKey;
  FetchEVStations(this.apiKey);
}

class EVStationInitial extends EVStationState {}
class EVStationLoading extends EVStationState {}
class EVStationLoaded extends EVStationState {
  final List<EVStation> stations;

  EVStationLoaded(this.stations);
}
class EVStationError extends EVStationState {
  final String message;
  EVStationError(this.message);
}
