import 'package:chat_app_ui/Screens/splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const InstantChatAppUI());
}

class InstantChatAppUI extends StatelessWidget {
  const InstantChatAppUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Color(0xFFF9A602)),
    );
    return MaterialApp(
      title: 'Instant Chat UI Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFF9A602),
        scaffoldBackgroundColor: const Color(0xFFeceff1),
      ),
      home: const SplashScreen(),
    );
  }
}
