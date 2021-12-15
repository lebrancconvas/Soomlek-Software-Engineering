import 'package:flutter/material.dart';
import 'package:mathematic/Main_Page/Calculate_Math/mathematic.dart';
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
