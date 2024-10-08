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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            shape: Border.all(width: 0.5),
            leading: const Icon(Icons.arrow_back_ios_new_outlined),
            title: const Text(
              'Recomended',
              style: TextStyle(
                  fontSize: 28,
                  color: Color.fromRGBO(0, 91, 135, 1),
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    SizedBox(width: 15),
                    Text(
                      "Start a new career",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(255, 0, 80, 119),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Data Science",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            )),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromRGBO(0, 91, 135, 1),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Machine Learning",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            )),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromRGBO(0, 91, 135, 1),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Apache Spark",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            )),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromRGBO(0, 91, 135, 1),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Decision Tree",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            )),
                      ),
                    const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromRGBO(0, 91, 135, 1),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Big Data",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            )),
                      ),
                    const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromRGBO(0, 91, 135, 1),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Docker",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            )),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromRGBO(0, 91, 135, 1),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Kubernetes",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            )),
                      ),
                    
                    ],
                  ),
                ),
                const Spacer(),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width - 30,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 225, 225, 225),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                              height: 125,
                              width: 125,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.network(
                                  fit: BoxFit.cover,
                                  "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRTVazyLd2jLUav81oJ0QZC3cxR0cAVYoPMFdnAGt4s382n3Jwe")),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Data Science",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w600),
                                ),
                                const Text(
                                  "Harvard University",
                                  style: TextStyle(
                                      fontSize: 13, fontWeight: FontWeight.w300),
                                ),
                                // ignore: sized_box_for_whitespace
                                Container(
                                    width: 210,
                                    child: const Text(
                                        "Lorem ipsum dolor sit amet eget nunc dictum est penatibus")),
                                const SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      height: 24,
                                      decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 96, 174, 0.2)),
                                      child: const Text(
                                        "Data Science",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color.fromRGBO(0, 91, 135, 1),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      height: 24,
                                      decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 96, 174, 0.2)),
                                      child: const Text(
                                        "Machine Learning",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color.fromRGBO(0, 91, 135, 1),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 225, 225, 225),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                            height: 125,
                            width: 125,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.network(
                                fit: BoxFit.cover,
                                "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRTVazyLd2jLUav81oJ0QZC3cxR0cAVYoPMFdnAGt4s382n3Jwe")),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "AI & ML",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              const Text(
                                "Harvard University",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w300),
                              ),
                              // ignore: sized_box_for_whitespace
                              Container(
                                  width: 210,
                                  child: const Text(
                                      "Lorem ipsum dolor sit amet eget nunc dictum est penatibus")),
                              const SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    height: 24,
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(0, 96, 174, 0.2)),
                                    child: const Text(
                                      "Machine Learning",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color.fromRGBO(0, 91, 135, 1),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    height: 24,
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(0, 96, 174, 0.2)),
                                    child: const Text(
                                      "Decision Tree",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color.fromRGBO(0, 91, 135, 1),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 225, 225, 225),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                            height: 125,
                            width: 125,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.network(
                                fit: BoxFit.cover,
                                "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRTVazyLd2jLUav81oJ0QZC3cxR0cAVYoPMFdnAGt4s382n3Jwe")),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Big Data",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              const Text(
                                "Harvard University",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w300),
                              ),
                              // ignore: sized_box_for_whitespace
                              Container(
                                  width: 210,
                                  child: const Text(
                                      "Lorem ipsum dolor sit amet eget nunc dictum est penatibus")),
                              const SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    height: 24,
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(0, 96, 174, 0.2)),
                                    child: const Text(
                                      "Big Data",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color.fromRGBO(0, 91, 135, 1),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    height: 24,
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(0, 96, 174, 0.2)),
                                    child: const Text(
                                      "Apache Spark",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color.fromRGBO(0, 91, 135, 1),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 225, 225, 225),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                            height: 125,
                            width: 125,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.network(
                                fit: BoxFit.cover,
                                "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRTVazyLd2jLUav81oJ0QZC3cxR0cAVYoPMFdnAGt4s382n3Jwe")),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Devops",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              const Text(
                                "Harvard University",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w300),
                              ),
                              // ignore: sized_box_for_whitespace
                              Container(
                                  width: 210,
                                  child: const Text(
                                      "Lorem ipsum dolor sit amet eget nunc dictum est penatibus")),
                              const SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    height: 24,
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(0, 96, 174, 0.2)),
                                    child: const Text(
                                      "Docker",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color.fromRGBO(0, 91, 135, 1),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    height: 24,
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(0, 96, 174, 0.2)),
                                    child: const Text(
                                      "Kubernetes",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color.fromRGBO(0, 91, 135, 1),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
