import 'package:flutter/material.dart';
import 'package:test1/screens/homeScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(child: homeScreen()),
      debugShowCheckedModeBanner: false,
    );
  }
}




