import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        appBar : AppBar(
        title: const Text("SPACE_PARAMETERS",
        style: TextStyle(fontSize: 28),
        ),
        centerTitle: true,
        backgroundColor: Colors.green
      ),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,),
              Container(
                height: 200,
                width: 200,
                color: Colors.black,
              )

          ],
        ),
      ),
    );
  }
}
