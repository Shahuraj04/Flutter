import 'package:flutter/material.dart';
class Question7 extends StatelessWidget{
  const Question7({super.key});
  @override
  
  Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("QUE_7"),

        ),
        body:Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 150,
                  child: Image.network("https://cdn.marvel.com/content/1x/deadpool2_lob_crd_02.jpg",
                  fit:BoxFit.cover,),
                ),
                Container(
                  height: 300,
                  width: 150,
                  child: Image.network("https://cdn.marvel.com/content/1x/avengersendgame_lob_crd_05_2.jpg",
                  fit:BoxFit.cover),
                ),
                Container(
                  height: 300,
                  width: 150,
                  child: Image.network("https://cdn.marvel.com/content/1x/spider-mannowayhome_lob_crd_03.jpg",
                  fit:BoxFit.cover),
                ),
                Container(
                  height: 300,
                  width: 150,
                  child: Image.network("https://cdn.marvel.com/content/1x/guardiansofthegalaxyvolume3_lob_crd_03.jpg",
                  fit:BoxFit.cover),
                ),
                Container(
                  height: 300,
                  width: 150,
                  child: Image.network("https://cdn.marvel.com/content/1x/antmanandthewaspquantumania_lob_crd_03.jpg",
                  fit:BoxFit.cover),
                ),

            
              ],
            ),
          ),
        ) ,
      ),
    );
  }
  
  
}