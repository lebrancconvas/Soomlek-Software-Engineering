import 'package:flutter/material.dart';
import 'package:mathematic/Main_Page/Calculate_Math/%E0%B8%AA%E0%B8%A1%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%95%E0%B8%B1%E0%B8%A7%E0%B9%81%E0%B8%9B%E0%B8%A3%E0%B9%80%E0%B8%94%E0%B8%B5%E0%B8%A2%E0%B8%A7.dart';
import 'package:mathematic/Main_Page/Question%20Game/Main_Math_Game.dart';
import 'package:mathematic/Main_Page/Question%20Game/math_Game.dart';
import 'package:mathematic/Main_Page/main_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Main_Page(),
    );
  }
}
