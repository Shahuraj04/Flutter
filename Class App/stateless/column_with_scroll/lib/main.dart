import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:  AppBar(
          title: const Text("SCROLLING COLUMN",
          style: TextStyle(fontSize: 30),),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        
        
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                "https://www.racefans.net/wp-content/uploads/2024/03/racefansdotnet-7172831_HiRes.jpg"),
              Container(
                height: 200,
                width: 200,
              ),
              Image.network("https://www.racefans.net/wp-content/uploads/2024/03/racefansdotnet-7172831_HiRes.jpg"),
              Container(
                height: 200,
                width: 200,
              ),
              Image.network("https://www.racefans.net/wp-content/uploads/2024/03/racefansdotnet-7172831_HiRes.jpg"),
              Container(
                height: 200,
                width: 200,
              )
                ],
              
          ),
        )
      ),
    );
  }
}
