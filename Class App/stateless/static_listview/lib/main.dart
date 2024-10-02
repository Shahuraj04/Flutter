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
          title: const Text("ListView",
          style: TextStyle(fontSize: 28),),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: ListView(
          children: [
            Image.network(
              "https://i.guim.co.uk/img/media/152c36e5b88f112b1a8ea268e52dcec9e3f97ddd/0_96_4358_2615/master/4358.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=356a36aac795ad43152d37c61fd9a312"),
            const Icon(
              Icons.favorite,
              color:Colors.orange,
            
            ),
            const Text("2024_WORLD_CHAMPION",
            style: TextStyle(fontSize: 20),),
            Image.network("https://i.guim.co.uk/img/media/152c36e5b88f112b1a8ea268e52dcec9e3f97ddd/0_96_4358_2615/master/4358.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=356a36aac795ad43152d37c61fd9a312"),
            GestureDetector(
              onTap: (){
                print("Button Pressed");
              },
              child: Container(
                height: 50,
                color: Colors.red,
                child: const Text("PRESS ME"),
              ),
            )

          ],
        )
      ),
    );
  }
}
