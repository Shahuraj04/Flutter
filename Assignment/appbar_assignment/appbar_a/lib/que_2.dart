import 'package:flutter/material.dart';


class Question2 extends StatelessWidget {
  const Question2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Row(
            children: [
              SizedBox(width: 150,),
              Text("QUE_2"),
              SizedBox(width: 125,),
              Icon(Icons.new_label),

            ],
          ),
        ),
        body: const Center(
          child: Text("Question 2"),
        ),
      ),
    );
  }
}
