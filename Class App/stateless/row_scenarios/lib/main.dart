import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Device Width:${MediaQuery.of(context).size.width}");
    print("Device Height:${MediaQuery.of(context).size.height}");

    return MaterialApp(
      home: Scaffold(
        appBar:  AppBar(
        title : const Text(
            "ROW_SCENARIOS",
            style:TextStyle(fontSize:30),
            
        ),centerTitle:true,
        backgroundColor: Colors.lightBlue,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color:Colors.lightGreen,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 150,
                width: 150,
                color:Colors.blue
              )
            ],
          ),
        )
      ),
    );
  }
}
