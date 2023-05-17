import 'package:flutter/material.dart';
import 'package:whatsapp_ui/StatusScreen.dart';

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
                    SizedBox(
                      child: Row(
                        children: [
                          Transform.translate(
                            offset: const Offset(30.0, 0.0),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                )),
                          ),
                          Transform.translate(
                            offset: const Offset(30.0, 0.0),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.search,
                                  color: Colors.white,
                                )),
                          ),
                          DropdownButton(
                              hint: Container(
                                transform:
                                    Matrix4.translationValues(30.0, 0.0, 0.0),
                                width: 0,
                                child: const Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                ),
                              ),
                              icon: SizedBox.shrink(),
                              underline: const SizedBox(),
                              items: const [
                                DropdownMenuItem(
                                  value: "settings",
                                  child: Text("Settings"),
                                ),
                                DropdownMenuItem(
                                    child: Text('Profile'), value: "profile"),
                                DropdownMenuItem(
                                  value: "settings",
                                  child: Text("Logout"),
                                ),
                              ],
                              onChanged: (String? value) {
                                return;
                              })
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
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 4, color: Colors.white))),
                      child: TextButton(
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
                    ),
                  ),
                  Expanded(
                    child: Container(
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
                decoration: const BoxDecoration(color: Colors.white),
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
                      return const Divider();
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
