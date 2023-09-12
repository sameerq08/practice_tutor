import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsUp'),
          bottom: const TabBar(tabs: [
            Icon(Icons.camera_alt),
            Text('Chats'),
            Text('Status'),
            Text('Calls'),
          ]),
        ),
        body: const TabBarView(children: [
          Text('Camera'),
          Text('Chats'),
          Text('Status'),
          Text('Calls'),
        ]),
      ),
    );
  }
}
