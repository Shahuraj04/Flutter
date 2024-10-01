import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(  // Removed the 'const' here
      home: Scaffold(
        appBar: AppBar(
          title: const Text("FIRST APP"),  // 'const' is fine here
          centerTitle: true,
          backgroundColor: Colors.blue,
          toolbarHeight: 100
        ),
        body: const Center(
          child: Text("Shahuraj"),  // 'const' is fine here
        ),
      ),
    );
  }
}
