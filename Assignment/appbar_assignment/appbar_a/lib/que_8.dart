import 'package:flutter/material.dart';

class Question8 extends StatelessWidget {
  const Question8({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("QUE_8"),
          ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration( 
              color: Colors.orange,
              
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


