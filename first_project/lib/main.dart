import 'package:first_project/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
//import './answer.dart';

void main() {
  runApp(MyApp());
}

// Class MyApp takes the template of Class Stateless Widget
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 0},
        {'text': 'Black', 'score': 1},
        {'text': 'Green', 'score': 0},
        {'text': 'Blue', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Giraffe', 'score': 0},
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 0},
        {'text': 'Snake', 'score': 0}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructer?',
      'answers': [
        {'text': 'Debayan', 'score': 0},
        {'text': 'Max', 'score': 0},
        {'text': 'David', 'score': 1},
        {'text': 'Zed', 'score': 0}
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Stanley'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
