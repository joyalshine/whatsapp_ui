import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 80, bottom: 40),
            child: Image.asset(
              "assets/images/WhatsApp_Welcome.jpeg",
              width: 300,
            ),
          ),
          const Text(
            "Welcome to WhatsApp",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(20),
            child: const Text(
              'Read our Privacy Policy. Tap "Agree and continue" to accept the Terms of Service',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black54),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(250, 35),
                backgroundColor: const Color.fromARGB(255, 25, 116, 88),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            child: const Text("Agree and continue"),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.circle_outlined,
                    color: Colors.green,
                  ),
                ),
                Text(
                  "English",
                  style: TextStyle(color: Colors.green),
                ),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: Colors.green,
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
