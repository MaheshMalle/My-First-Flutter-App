import "package:flutter/material.dart";

import "./question.dart";
import "./answer.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    {
      "questionText": "What's your favorite color?",
      "answers": ["Black", "REd", "Green", "White"],
    },
    {
      "questionText": "What's your favorite animal",
      "answers": ["Nuvvu", "Nenu", "Mana Mam", "Students"],
    },
    {
      "questionText": "Who's your favorite hero",
      "answers": ["AA", "PSPK", "MB", "NTR"],
    }
  ];

  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[questionIndex]["questionText"] as String),
                  ...(questions[questionIndex]["answers"] as List<String>)
                      .map((answer) {
                    return Answer(answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text("quiz is completed"),
              ),
      ),
    );
  }
}
