import 'package:flutter/material.dart';

class Question1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue, 
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('AppBar Title'), 
              Row(
                children: [
                  Icon(Icons.search),          
                  SizedBox(width: 10),        
                  Icon(Icons.notifications),
                ],
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text('Hello, Flutter!'),
        ),
      ),
    );
  }
}
