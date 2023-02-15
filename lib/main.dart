import 'package:brikow_assignment/auth/signup_screen.dart';
import 'package:brikow_assignment/home/home_screen.dart';
import 'package:brikow_assignment/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Park Plus',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const WelcomeAnimation());
  }
}
