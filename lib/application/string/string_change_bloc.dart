
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frame/application/string/string_change_event.dart';

class StringChangeBloc extends Bloc<StringChangeEvent, String> {
  StringChangeBloc() : super("") {
    on<ToPlus>((event, emit) => emit("plus"));
    on<ToMinus>((event, emit) => emit("minus"));
  }
}