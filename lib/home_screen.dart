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
          centerTitle: false,
          title: const Text('WhatsUp'),
          bottom: const TabBar(tabs: [
            Tab(child: Icon(Icons.camera_alt)),
            Tab(child: Text('Chats')),
            Tab(child: Text('Status')),
            Tab(child: Text('Calls')),
          ]),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: Text('New Group'),
                      ),
                      const PopupMenuItem(
                        value: 2,
                        child: Text('Settings'),
                      ),
                      const PopupMenuItem(
                        value: 2,
                        child: Text('Logout'),
                      )
                    ]),
            const SizedBox(
              width: 10,
            ),
          ],
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
