import 'package:flutter/material.dart';
import 'package:practice_tutor/home_screen.dart';

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
          backgroundColor: const Color(0xff764abc),
        ),
        drawer: Drawer(
          backgroundColor: Colors.amber,
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                child: Text('User Profile'),
              ),
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff764abc),
                ),
                accountName: Text('Sameer'),
                accountEmail: Text('sameer.q08@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://miro.medium.com/v2/resize:fit:1200/0*YoNIUVJ3OC8j95tH.jpg'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text('Calender'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              )
            ],
          ),
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
                  prefixIcon: const Icon(Icons.alternate_email),
                  suffixIcon: const Icon(Icons.email_outlined),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                ),
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://t4.ftcdn.net/jpg/02/05/24/35/360_F_205243571_r9FJ3PkeQrT5uJqihOdu6yVvdtN4TkZA.jpg'),
                    ),
                  );
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
