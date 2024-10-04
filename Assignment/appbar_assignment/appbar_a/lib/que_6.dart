import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Question6 extends StatelessWidget{
  const Question6({super.key});
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("QUE_6"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
          
              
              children: [
                Container(
                  color: Colors.red,
                  width: 75,
                  height: 75,
                ),
                Container(
                  color: Colors.blue,
                  width: 75,
                  height: 75,
                ),
                Container(
                  color: Colors.lightBlue,
                  width: 75,
                  height: 75,
                ),Container(
                  color: Colors.green,
                  width: 75,
                  height: 75,
                ),Container(
                  color: Colors.lightGreen,
                  width: 75,
                  height: 75,
                ),Container(
                  color: Colors.red,
                  width: 75,
                  height: 75,
                ),Container(
                  color: Colors.lightBlueAccent,
                  width: 75,
                  height: 75,
                ),Container(
                  color: Colors.orange,
                  width: 75,
                  height: 75,
                ),Container(
                  color: Colors.orangeAccent,
                  width: 75,
                  height: 75,
                ),Container(
                  color: Colors.amber,
                  width: 75,
                  height: 75,
                ),
                Container(
                  color: Colors.amberAccent,
                  width: 75,
                  height: 75,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  

}