import 'package:flutter/material.dart';

void main() {
  runApp(const AppbarColorApp());
}

class AppbarColorApp extends StatefulWidget {
  const AppbarColorApp({super.key});

  @override
  State<AppbarColorApp> createState() => _AppbarColorAppState();
}

class _AppbarColorAppState extends State<AppbarColorApp> {
  bool colorChange = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Appbar Color",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar Color App",
          style: TextStyle(color: (colorChange) ? Colors.white : Colors.black),),
          centerTitle: true,
          backgroundColor: (colorChange) ? Colors.black : Colors.red,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Change Color"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            colorChange = !colorChange;
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
