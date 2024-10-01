import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      
        appBar:AppBar(
          title:const Text("INDIAN FLAG"),
          centerTitle:true,
          backgroundColor:Colors.cyan,
        ),

        body:Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              
          
              Container(
                height:50,
                width: 350,
                color: Colors.orange,
              ),
              Container(
                width: 350,
                height: 50,
                color: Colors.white,
                child: Image.network("https://www.freeiconspng.com/download/46973"),
              ),
              Container(
                width:350,
                height:50,
                color: Colors.green,
              ),
            ]
          ),
        ),
      
      
      
      ),

    );
  }
}