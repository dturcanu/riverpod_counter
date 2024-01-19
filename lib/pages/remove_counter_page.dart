import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_1/main.dart';

class RemoveCounterPage extends ConsumerWidget {
  const RemoveCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counter = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter page"),
      ),
      body: Center(
          child: Text(
        '$counter',
        style: Theme.of(context).textTheme.displayMedium,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state--;
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
