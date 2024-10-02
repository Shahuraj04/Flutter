import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(
          title:const  Text("NETFLIX",
          style: TextStyle(
            color: Colors.red,
            fontSize: 30,
            fontWeight:FontWeight.bold),),
            centerTitle: true,
        backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context,int index){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("MARVEL MOVIES",
                style: TextStyle(fontSize: 20),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: 
                        Image.network("https://cdn.marvel.com/content/1x/thunderbolts_lob_crd_03.jpg"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://cdn.marvel.com/content/1x/captainamericabravenewworld_lob_crd_03.jpg"),
                      ),
                      Container(
                        padding:const EdgeInsets.all(5), 
                        height: 300,
                        width: 200,
                        child:Image.network("https://cdn.marvel.com/content/1x/deadpoolandwolverine_lob_crd_03.jpg")
                      )
                      
                    ],
                  ),
                ),
                const Text("DC MOVIES",
                style: TextStyle(fontSize: 20),
                ),
                 SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: 
                        Image.network("https://static.dc.com/2024-04/JOKER2_VERT_TSR_2764x4096_DOM.jpg?w=640"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://static.dc.com/dc/files/default_images/darkknightrises_thumb_192x291_52ac20da47a3b9.07047124.jpg?w=192"),
                      ),
                      Container(
                        padding:const EdgeInsets.all(5), 
                        height: 300,
                        width: 200,
                        child:Image.network("https://static.dc.com/dc/files/default_images/Movies-Thumb_TheBatman_2_6205b82ee37268.37925455.jpg?w=384")
                      )
                      
                    ],
                  ),
                ),
                             
              ],
            );
          })
      ),
    );
  }
}
