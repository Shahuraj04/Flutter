import 'package:flutter/material.dart';
class Question5 extends StatelessWidget{
  const Question5({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Que_5"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxzWyz_RicywO7C4jWG3gz9x7xMgqy0oFaUg&s",
              width: 75,
              height: 75,),
              Image.network("https://play-lh.googleusercontent.com/Il1s7VYRV23p_J7m1rS8y96ldviGz0aCF31d_fLN1Yjaa8MrZGaNhqGe7uD7mHvXR2vu",
              width: 75,
              height: 75,),
              Image.network("https://www.pngguru.in/storage/uploads/images/Bcci%20logo%20png%20download%20%7C%20Indian%20Cricket%20png%20logo_1662621138_928128071.webp",width: 75,
              height: 75,)
            ],
          ),
        )
      ),
    );
  }
  }

