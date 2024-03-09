import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreenn extends ConsumerWidget {
  const CounterScreenn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counter = ref.watch(counterPovider);
    final bool isDarkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(isDarkModeProvider.notifier).state = !isDarkMode;
              },
              icon: Icon(isDarkMode
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined))
        ],
      ),
      body: _CounterView(
        actualValue: counter,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ref.read(counterPovider.notifier).state++;
          ref.read(counterPovider.notifier).update((state) => state + 1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _CounterView extends StatelessWidget {
  final int actualValue;

  const _CounterView({required this.actualValue});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Valor: $actualValue',
        style: const TextStyle(fontSize: 25),
      ),
    );
  }
}
