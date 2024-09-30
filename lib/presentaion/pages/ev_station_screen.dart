import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/evStation/ev_station_bloc.dart';
import '../../application/evStation/ev_station_event.dart';
import '../../application/evStation/ev_station_state.dart';
import '../../repository/retrofit/ApiClient.dart';

class EVStationScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("EV Stations")),
      body: BlocBuilder<EVStationBloc, EVStationState>(
        builder: (context, state) {
          if (state is EVStationLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is EVStationLoaded) {
            return ListView.builder(
              itemCount: state.stations.length,
              itemBuilder: (context, index) {
                final station = state.stations[index];
                return ListTile(
                  title: Text(station.name),
                  subtitle: Text(station.status),
                );
              },
            );
          } else if (state is EVStationError) {
            return Center(child: Text(state.message));
          }
          return Container();
        },
      ),
    );
  }
}
