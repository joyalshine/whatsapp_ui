import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/login.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    goToNextPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset(
        'assets/images/whatsapp-logo.png',
        width: 250,
      ),
    ));
  }

  Future<void> goToNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => ScreenLogin()));
  }
}
