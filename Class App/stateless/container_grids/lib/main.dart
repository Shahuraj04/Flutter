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

      home: Scaffold(
        appBar:  AppBar(
        title : const Text(
    return MaterialApp(
            "Column Demo",
            style:TextStyle(fontSize:28),
            
        ),centerTitle:true,
        backgroundColor: Colors.lightBlue,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color:Colors.lightGreen,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                color:Colors.redAccent
              )
            ],
          ),
        )
      ),
    );
  }
}
