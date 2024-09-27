
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frame/application/string/string_change_bloc.dart';
import 'package:frame/application/string/string_change_event.dart';

class ChangeScreen extends StatelessWidget {
  const ChangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<StringChangeBloc>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('BLoC Change')),
      body: BlocBuilder<StringChangeBloc, String>(
        builder: (context, count) {
          return Center(
            child: Text(
              count,
              style: const TextStyle(fontSize: 48),
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () => counterBloc.add(ToPlus()),
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => counterBloc.add(ToMinus()),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
