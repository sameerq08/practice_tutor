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
        body: TabBarView(children: [
          const Text('Camera'),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://miro.medium.com/v2/resize:fit:1200/0*YoNIUVJ3OC8j95tH.jpg'),
                ),
                title: Text('Avaiator'),
                subtitle: Text('Personal information'),
                trailing: Text('6:00'),
              );
            },
          ),
          const Text('Status'),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://miro.medium.com/v2/resize:fit:1200/0*YoNIUVJ3OC8j95tH.jpg'),
                ),
                title: const Text('Caller Name'),
                subtitle: Text(index / 2 == 0
                    ? 'You missed Audio call'
                    : 'Call time was 12'),
                trailing: Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
              );
            },
          ),
        ]),
      ),
    );
  }
}
