import 'package:flutter/material.dart';

void main() {
  runApp(const QuestionApp()); // Run the main app
}

class QuestionApp extends StatelessWidget {
  const QuestionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Question10(), // Use Question10 as home widget
    );
  }
}

class Question10 extends StatelessWidget {
  const Question10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QUE_10"), 
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), 
              bottomRight: Radius.circular(20), 
            ),
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
