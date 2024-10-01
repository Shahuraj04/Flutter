import 'package:flutter/material.dart';

void main() {
  runApp(const PlayersApp());
}

class PlayersApp extends StatefulWidget {
  const PlayersApp({super.key});

  @override
  State<PlayersApp> createState() => _PlayersAppState();
}

class _PlayersAppState extends State<PlayersApp> {
  int _counter = 0;
  String pName = "";

  List<Map> playerList = [
    {
      "photo": "https://documents.bcci.tv/resizedimageskirti/164_compress.png",
      "name": "Virat Kohli"
    },
    {
      "photo": "https://documents.bcci.tv/resizedimageskirti/107_compress.png",
      "name": "Rohit Sharma"
    },
    {
      "photo": "https://documents.bcci.tv/resizedimageskirti/2972_compress.png",
      "name": "Rishabh Pant"
    },
    {
      "photo": "https://documents.bcci.tv/resizedimageskirti/1124_compress.png",
      "name": "Jasprit Bumrah"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Players',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Players App"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    pName = playerList[_counter]["name"];
                  });
                },
                child: Image.network(
                  playerList[_counter]["photo"],
                  height: 300,
                ),
              ),
              const SizedBox(height: 50),
              Text(
                pName,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            pName="";
            setState(() {
              if (_counter < playerList.length - 1) {
                _counter++;
              } else {
                _counter = 0;
              }
            });
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
