import 'package:flutter/material.dart';

class Question9 extends StatelessWidget {
  const Question9 ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("QUE_9"),
          ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration( 
              color: Colors.orange,
              borderRadius:const  BorderRadius.all(Radius.circular(20)),
              border: Border.all(
                color: Colors.red,
                width: 6,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


