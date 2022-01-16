import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Variable for the index of the question
  num questionIndex = 0;

  // Function that is exectuted when button is pressed
  String answerQuestion() {
    // This changes the state of the Widget
    setState(() {
      questionIndex += 1;
    });

    print(questionIndex);
  }

  // List of questions
  var questions = [
    {
      "questionText": "What's your favorite color?",
      "answers": ["Green", "Pink", "Blue"],
    },
    {
      "questionText": "What's your name?",
      "answers": ["Shaun", "Max", "Deb"],
    },
    {
      "questionText": "Where do you live?",
      "answers": ["Norway", "Mumbai", "Kolkata"],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Question(questions[questionIndex]['questionText']),
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
