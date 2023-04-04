import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameProvider =
    Provider<String>((ref) => 'Hello World using Provider and consumer widget');

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    // final name = ref.watch(nameProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Scope'),
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            final name = ref.watch(nameProvider);
            return Text(name);
          },
        ),
      ),
    );
  }
}
