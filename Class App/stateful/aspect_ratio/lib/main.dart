import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar:  AppBar(
          title: const Text("Aspect Ratio"),
        ),
        body: Center(
          child:Container(
            height: 300,
            width: 300,
            child: Image.network("https://e7.pngegg.com/pngimages/512/612/png-clipart-mercedes-amg-petronas-f1-team-2018-fia-formula-one-world-championship-abu-dhabi-grand-prix-logo-red-bull-racing-f1-logo-angle-text-thumbnail.png"),
          ),
      ),
      ),
    );
  }
}
