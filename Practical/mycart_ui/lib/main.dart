import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.arrow_back_ios),
            centerTitle: true,
            title: const Text(
              "My Cart",
              style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 244, 244, 244),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/636cc9840038713d9aa59ac2_UV_hero.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 15, right: 100),
                            child: Text(
                              "Nike Shoes",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                          ),
                          const SizedBox(
                              height: 40,
                              width: 200,
                              child: Text(
                                  "With iconic style and legendary comfort,on repeat")),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  "\$570",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    const Icon(Icons.remove),
                                    Container(
                                      height: 20,
                                      width: 25,
                                      padding: const EdgeInsets.only(top: 1,left: 7),
                                      decoration: BoxDecoration(
                                        
                                        borderRadius: BorderRadius.circular(1),
                                        border: Border.all(
                                          color: Colors.blueAccent
                                        )
                                      ),
                                      child: const Text("1",style: TextStyle(fontWeight: FontWeight.bold),),
                                    ),
                                    const Icon(Icons.add)
                                    
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 244, 244, 244),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/636cc9840038713d9aa59ac2_UV_hero.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 15, right: 100),
                            child: Text(
                              "Nike Shoes",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                          ),
                          const SizedBox(
                              height: 40,
                              width: 200,
                              child: Text(
                                  "With iconic style and legendary comfort,on repeat")),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  "\$77",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    const Icon(Icons.remove),
                                    Container(
                                      height: 20,
                                      width: 25,
                                      padding: const EdgeInsets.only(top: 1,left: 7),
                                      decoration: BoxDecoration(
                                        
                                        borderRadius: BorderRadius.circular(1),
                                        border: Border.all(
                                          color: Colors.blueAccent
                                        )
                                      ),
                                      child: const Text("1",style: TextStyle(fontWeight: FontWeight.bold),),
                                    ),
                                    const Icon(Icons.add)
                                    
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(25),
                  height: 250,
                  width: MediaQuery.of(context).size.width-30,
                  
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text("Subtotal:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),
                          Spacer(),
                          Text("\$800.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))
                        ],
                      ),
                      const SizedBox(height: 15,),
                      const Row(children: [
                          Text("Delivery Fees:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),
                          Spacer(),
                          Text("\$5.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))
                        ],),
                        const SizedBox(height: 15,),
                      const Row(children: [
                          Text("Discount:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),
                          Spacer(),
                          Text("\$40%",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))
                        ],)
                        ,
                        const SizedBox(height: 15,),
                        Container(
                          padding: EdgeInsets.only(top: 15),
                          height: 50,
                          width: MediaQuery.of(context).size.width-30,

                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Text("Checkout",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
                        )
                    ],
                  ),
                )
              
              ],
            ),
          )),
    );
  }
}
