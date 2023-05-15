import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue[200]),
      home: ScreenSplash(),
    );
  }
}
