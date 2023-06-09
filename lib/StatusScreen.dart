import 'package:flutter/material.dart';
import 'package:whatsapp_ui/HomeScreen.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

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
      backgroundColor: const Color.fromARGB(255, 22, 139, 82),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 60,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 22, 139, 82)),
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
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.search,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {
                                print("Icon Pressed");
                              },
                              icon: const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    )
                  ]),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5, bottom: 0),
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 22, 139, 82)),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) {
                                return HomeScreen();
                              },
                            ));
                          },
                          child: const Text(
                            'CHATS',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 4, color: Colors.white))),
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) {
                                return StatusScreen();
                              },
                            ));
                          },
                          child: const Text(
                            'STATUS',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: TextButton(
                          onPressed: () {
                            print('');
                          },
                          child: const Text(
                            'CALLS',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 30,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'My Status',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text('Tap to add status update')
                                ],
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
