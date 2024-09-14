import 'package:flutter/material.dart';
import 'package:profile/SplashScreen.dart';
import 'package:profile/HomeScreen.dart';

///////////////////jgdafjshfuysuyf
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Define Named Routes
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile App',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
