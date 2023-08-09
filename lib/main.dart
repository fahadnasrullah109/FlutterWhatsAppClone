import 'package:flutter/material.dart';
import 'package:whats_app_clone/presentation/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whats App Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 0, 128, 105)),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
