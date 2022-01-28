import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  var totalScore = 0;

  // Function that is exectuted when button is pressed
  void answerQuestion(int score) {
    // This changes the state of the Widget
    setState(() {
      questionIndex += 1;
    });

    totalScore += score;
    if (questionIndex < 3) {
      print("We have more questions!");
    } else {
      print("Sorry, no more questions.");
    }
    print(questionIndex);
  }

  // List of questions
  var questions = [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Green", "score": 5},
        {"text": "Pink", "score": 10},
        {"text": "Blue", "score": 7},
      ],
    },
    {
      "questionText": "What's your name?",
      "answers": [
        {"text": "Shaun", "score": 10},
        {"text": "Max", "score": 5},
        {"text": "Deb", "score": 7}
      ],
    },
    {
      "questionText": "Where do you live?",
      "answers": [
        {"text": "Mumbai", "score": 10},
        {"text": "Norwar", "score": 5},
        {"text": "Kolkata", "score": 7}
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: questionIndex < 3
            ? Quiz(
                answerQuestion: answerQuestion,
                questions: questions,
                questionIndex: questionIndex,
              )
            : Result(totalScore),
      ),
    );
  }
}
