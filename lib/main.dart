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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SafeArea(child: Center(child: Text(x.toString()))),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomCenter,
                color: Colors.red,
                //height: 100,
                //width: 100,
                child: const Text('i am container 1'),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.green,
              ),
            ),
            const Text('i am container 2'),
            const Expanded(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.teal,
                backgroundImage: NetworkImage(
                    'https://t4.ftcdn.net/jpg/02/05/24/35/360_F_205243571_r9FJ3PkeQrT5uJqihOdu6yVvdtN4TkZA.jpg'),
                //child: Icon(Icons.person),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                cursorRadius: const Radius.circular(30),
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(fontSize: 14, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.3),
                  filled: true,
                  hintText: 'Email',
                  labelText: 'Email',
                ),
                onChanged: (value) {
                  print(value);
                },
              ),
            )
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
