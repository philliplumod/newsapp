import 'package:flutter/material.dart';
import 'package:newsapp/presentation/pages/homescreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const Homescreen(),
    );
  }
}
