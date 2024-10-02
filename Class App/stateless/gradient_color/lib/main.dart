import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar : AppBar(
          title: const Text(
            "Container Demo",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
         ),
         centerTitle: true,
       ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.bottomLeft,
            decoration: const BoxDecoration(
              gradient:RadialGradient(colors: [
                Colors.black,
                Colors.red,
              ])
            ),
          )
        ),
      ),
    );
  }
}
