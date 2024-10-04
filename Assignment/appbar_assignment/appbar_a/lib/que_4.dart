import 'package:flutter/material.dart';

class Question4 extends StatelessWidget {
  const Question4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("QUE_4"),
        ),
        body: Center(  // Wrap Column in Center widget to center it both horizontally and vertically
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  // Centers the Column's children vertically
            crossAxisAlignment: CrossAxisAlignment.center, // Centers the Column's children horizontally
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.blueGrey,
              ),
              const SizedBox(height: 20),  // Add space between containers
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
