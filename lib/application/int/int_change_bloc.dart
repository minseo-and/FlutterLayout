
import 'package:flutter_bloc/flutter_bloc.dart';
import 'int_change_event.dart';

class IntCounterBloc extends Bloc<IntChangeEvent, int> {
  IntCounterBloc() : super(0) {
    on<Increment>((event, emit) => emit(state + 1));
    on<Decrement>((event, emit) => emit(state - 1));
  }
}