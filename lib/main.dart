import 'package:flutter/material.dart';
import 'package:indoor_detection/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YOLO App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(), // layar utama
    );
  }
}
