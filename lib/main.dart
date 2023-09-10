import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
        ),
        body: SafeArea(child: Center(child: Text(x.toString()))),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x++;
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
