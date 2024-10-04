import 'package:flutter/material.dart';
import 'que_1.dart';
import 'que_2.dart';
import 'que_3.dart';
import 'que_4.dart';
import 'que_5.dart';
import 'que_6.dart';
import 'que_7.dart';
import 'que_8.dart';
import 'que_9.dart';
import 'que_10.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Question1(),
    );
  }
}
