import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue[200]),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CircleAvatar(
        radius: 25,
        backgroundColor: Color.fromARGB(255, 50, 255, 95),
        child: Icon(
          Icons.message,
          color: Colors.white,
          size: 30,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 32, 164, 100),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 60,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 32, 164, 100)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'WhatsApp',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                        onPressed: () {
                          print("Icon Pressed");
                        },
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ))
                  ]),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5, bottom: 0),
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 32, 164, 100)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        print('');
                      },
                      child: const Text(
                        'CHATS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )),
                  TextButton(
                      onPressed: () {
                        print('');
                      },
                      child: const Text(
                        'STATUS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )),
                  TextButton(
                      onPressed: () {
                        print('');
                      },
                      child: const Text(
                        'CALLS',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ))
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr_IULLOXJT80cLu-eRqkRGrHY23yLEx4p0w&usqp=CAU'),
                          radius: 30,
                        ),
                        title: Text('Person $index'),
                        subtitle: Text('Person $index is offline'),
                        trailing: Text('$index :11'),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
