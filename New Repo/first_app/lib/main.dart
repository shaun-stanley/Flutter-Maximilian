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
  var questions = <String>[
    "What's your name?",
    "What's your favorite color?",
    "When's your birthday?"
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
            Question(questions[questionIndex]),
            RaisedButton(
              child: Text("Answer 01"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 01"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("Answer 01"),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
