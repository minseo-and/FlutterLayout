
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/counter_bloc.dart';
import '../../application/counter_event.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('BLoC Counter')),
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, count) {
          return Center(
            child: Text(
              '$count',
              style: const TextStyle(fontSize: 48),
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () => counterBloc.add(Increment()),
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => counterBloc.add(Decrement()),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}