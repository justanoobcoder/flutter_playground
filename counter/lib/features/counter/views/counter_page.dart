import 'package:counter/features/counter/cubits/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().decrease(),
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 20),
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text(
                  state.toString(),
                  style: Theme
                      .of(context)
                      .textTheme
                      .headlineLarge,
                );
              },
            ),
            const SizedBox(width: 20),
            FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().increase(),
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
