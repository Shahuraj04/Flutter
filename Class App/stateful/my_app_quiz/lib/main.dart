import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyQuizApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyQuizApp extends StatefulWidget {
  const MyQuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State<MyQuizApp> {
  List<Map> allQuestions = [
    {
      "question": "Who developed the Flutter Framework and continues to maintain it today?",
      "options": ["Facebook", "Microsoft", "Google", "Oracle"],
      "correctAnswer": 2,
      "explanation": "Google began developing Flutter back in 2015 and supports its continued development and maintenance today alongside a highly active open-source community.",
    },
    {
      "question": "Which programming language is used to build Flutter applications?",
      "options": ["Kotlin", "Dart", "Java", "Go"],
      "correctAnswer": 1,
      "explanation": "Flutter programs are written in Google's own Dart programming language.",
    },
    {
      "question": "Which function will return the widgets attached to the screen as a root of the widget tree?",
      "options": ["main()", "runApp()", "container()", "root()"],
      "correctAnswer": 1,
      "explanation": "runApp() will return the widgets attached to the screen as the root of the widget tree.",
    },
    {
      "question": "Which component allows us to specify the distance between widgets on the screen?",
      "options": ["SafeArea", "SizedBox", "table", "AppBar"],
      "correctAnswer": 1,
      "explanation": "SizedBox is a widget that allows us to have a specified height or width between two related widgets.",
    },
    {
      "question": "Access to a cloud database through Flutter is available through which service?",
      "options": ["SQLite", "Firebase Database", "NOSQL", "MYSQL"],
      "correctAnswer": 1,
      "explanation": "Firebase database allows for access to a cloud-based database provider for Flutter applications.",
    },
  ];

  int type = 0;
  String appbr = "QUIZZY";
  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int score = 0;
  String exp = "";
  int questionPage = 1; 

  Color? checkAnswer(int answerIndex) {
    if (selectedAnswerIndex != -1) {
      exp = "Explanation: ${allQuestions[currentQuestionIndex]["explanation"]}";
      if (answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
        return Colors.green;
      } else if (selectedAnswerIndex == answerIndex) {
        return Colors.red;
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appbr,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: type == 0 ? Column(
              children: [
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          type = 1;
                          appbr = "TYPE-1";
                        });
                      },
                      child: Image.network("https://w7.pngwing.com/pngs/67/315/png-transparent-flutter-hd-logo.png",
                      height: 75,width: 75,)
                    ),
                    const SizedBox(width: 50),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          type = 2;
                          appbr = "TYPE-2";
                        });
                      },
                      child: Image.network("https://w7.pngwing.com/pngs/405/878/png-transparent-java-logo-java-runtime-environment-computer-icons-java-platform-standard-edition-java-miscellaneous-text-logo.png",
                      height: 75,width: 75,)
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          type = 3;
                          appbr = "TYPE-3";
                        });
                      },
                      child: Image.network("https://w7.pngwing.com/pngs/46/626/png-transparent-c-logo-the-c-programming-language-computer-icons-computer-programming-source-code-programming-miscellaneous-template-blue.png",
                      height: 75,width: 75,),
                    ),
                    const SizedBox(width: 50),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          type = 4;
                          appbr = "TYPE-4";
                        });
                      },
                      child: Image.network("https://w7.pngwing.com/pngs/234/329/png-transparent-python-logo.png",height: 75,width: 75,)
                    ),
                  ],
                ),
              ],
            )
          : secondScaffold(),
    );
  }

  Widget secondScaffold() {
    if (questionPage == 2) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://img.freepik.com/free-vector/trophy_78370-345.jpg",
                height: 300,
              ),
              const SizedBox(height: 30),
              const Text(
                "Congratulations",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "SCORE: $score/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    currentQuestionIndex = 0;
                    selectedAnswerIndex = -1;
                    exp = "";
                    score = 0;
                    questionPage = 1;
                    setState(() {
                      type = 0;
                      appbr = "QUIZZY";
                    });
                  },
                  child: const Text(
                    "RESET",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (type == 1) {
      return Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              children: [
                const SizedBox(width: 130),
                Text(
                  "Question: ${currentQuestionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 380,
              height: 125,
              child: Text(
                allQuestions[currentQuestionIndex]["question"],
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple,
                ),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(checkAnswer(0)),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 0;
                    if (selectedAnswerIndex ==
                        allQuestions[currentQuestionIndex]
                            ["correctAnswer"]) {
                      score++;
                    }
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentQuestionIndex]['options'][0],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(checkAnswer(1)),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 1;
                    if (selectedAnswerIndex ==
                        allQuestions[currentQuestionIndex]
                            ["correctAnswer"]) {
                      score++;
                    }
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentQuestionIndex]['options'][1],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(checkAnswer(2)),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 2;
                    if (selectedAnswerIndex ==
                        allQuestions[currentQuestionIndex]
                            ["correctAnswer"]) {
                      score++;
                    }
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentQuestionIndex]['options'][2],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(checkAnswer(3)),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 3;
                    if (selectedAnswerIndex ==
                        allQuestions[currentQuestionIndex]
                            ["correctAnswer"]) {
                      score++;
                    }
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentQuestionIndex]['options'][3],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 50,
              width: 350,
              child: Text(
                exp,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {
                if (selectedAnswerIndex != -1) {
                  if (currentQuestionIndex < allQuestions.length - 1) {
                    currentQuestionIndex++;
                  } else {
                    questionPage = 2;
                  }
                  selectedAnswerIndex = -1;
                  exp = "";
                  setState(() {});
                }
              },
              backgroundColor: Colors.blue,
              child: const Icon(
                Icons.forward,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    } else if (type == 2) {
      return const Center(child: Text("You selected: QUE_2"));
    } else if (type == 3) {
      return const Center(child: Text("You selected: QUE_3"));
    } else if (type == 4) {
      return const Center(child: Text("You selected: QUE_4"));
    } else {
      return const Center(); 
    }
  }
}
