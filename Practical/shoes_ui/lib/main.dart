import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int order = 0;
  int next = 2; 

  
  Scaffold toggleScreen() {
    if (next==1) {
  
      
      return Scaffold(
        appBar: AppBar(
          title: const Text("PURCHASED",style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.deepPurpleAccent),),
        ),
        body: Center(
        
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Thank you for your purchasing $order Nike Air Force 1 '07!",
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                  )),
                const SizedBox(height: 50,),
            
            ElevatedButton(
              style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.deepPurpleAccent),
            ),
              onPressed:(){
              setState(() {
                
                next = 2;
              });
            } 
            , child: const Text("RETURN",style: TextStyle(color: Colors.white),))],
          ),
        ),
      );
    } else if(next == 2){
      return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Text(
                "Shoes",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.deepPurpleAccent),
              ),
              const SizedBox(width: 290,),
              
              GestureDetector(
                onTap: (){
                  setState(() {
                    next= 3;
                  });
                },
                child: const Icon(Icons.shopping_cart, color: Colors.deepPurpleAccent)),
            ],
          ),
        ),
        body: Column(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/636cc9840038713d9aa59ac2_UV_hero.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                SizedBox(width: 20),
                Text(
                  "Nike Air Force 1 '07",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 15),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Text(
                    "SHOES",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Text(
                    "FOOTWEAR",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "With iconic style and legendary comfort, the AF-1 \nwas made to be worn on repeat. This iteration puts a \nfresh spin on the hoops classic with crisp leather, era- \nechoing '80s construction and reflective-design \nSwoosh logos",
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                const SizedBox(width: 15),
                const Text(
                  "Quantity ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    if (order != 0) {
                      setState(() {
                        order--;
                      });
                    }
                  },
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 15),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5),
                      borderRadius: BorderRadius.circular(2)),
                  child: Text(
                    "$order",
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      order++;
                    });
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 60),
            Container(
              height: 60,
              padding: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(50)),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    next = 1;
                  });
                },
                child: const Text(
                  "Purchase",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      );
      
      
    }
    else if(next == 3){
      return Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              onTap: (){
                setState(() {
                  next=2;
                });
              },
              child: const Icon(Icons.arrow_back_ios)),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Icon(Icons.remove),
                                    Container(
                                      height: 20,
                                      width: 25,
                                      padding: const EdgeInsets.only(
                                          top: 1, left: 7),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(1),
                                          border: Border.all(
                                              color: Colors.blueAccent)),
                                      child: const Text(
                                        "1",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
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
                const SizedBox(
                  height: 20,
                ),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Icon(Icons.remove),
                                    Container(
                                      height: 20,
                                      width: 25,
                                      padding: const EdgeInsets.only(
                                          top: 1, left: 7),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(1),
                                          border: Border.all(
                                              color: Colors.blueAccent)),
                                      child: const Text(
                                        "1",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
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
                  width: MediaQuery.of(context).size.width - 30,
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Subtotal:",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 18),
                          ),
                          Spacer(),
                          Text("\$800.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18))
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Delivery Fees:",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 18),
                          ),
                          Spacer(),
                          Text("\$5.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18))
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Discount:",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 18),
                          ),
                          Spacer(),
                          Text("\$40%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18))
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 15),
                        height: 50,
                        width: MediaQuery.of(context).size.width - 30,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                          "Checkout",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ));
    }
    else {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Welcome"),
          
        ),
        body: ElevatedButton(onPressed: (){
          setState(() {
            next=2;
          });
        }, child:const Text("return")),
      );

    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: toggleScreen(), 
    );
  }
}
