import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
        ),
        body: Column(
          children: [
            SafeArea(child: Center(child: Text(x.toString()))),
            Stack(children: [
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
                child: const Text('i am container 1'),
              ),
              Container(
                color: Colors.green,
                width: 50,
                height: 50,
                child: const Text('i am container 1'),
              ),
            ]),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x++;
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
