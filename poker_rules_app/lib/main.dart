import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('POKER RULES'),
            backgroundColor: const Color.fromARGB(255, 120, 98, 205),
          ),
          body: const Center(
            child: Text('Hello World!'),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              backgroundColor: const Color.fromARGB(255, 120, 98, 205),
              child: const Icon(Icons.add))),
    );
  }
}
