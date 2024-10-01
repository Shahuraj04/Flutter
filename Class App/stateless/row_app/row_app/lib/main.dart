import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title:const Text("ROW APP"),
          centerTitle:true,
          backgroundColor:Colors.cyan,
        ),
        body: Center(
          child:Row(
            children:[
              const SizedBox(width: 100,),
              Container(
                height:100,
                width: 50,
                color: Colors.orange,
              ),
              Container(
                height:100,
                width: 50,
                color: Colors.blue,
              ),
              Container(
                height:100,
                width: 50,
                color: Colors.black,
              )
              ]),
        ),
      ),
    );
  }
}
