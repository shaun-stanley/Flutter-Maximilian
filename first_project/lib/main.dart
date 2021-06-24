import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your name?',
      'What\'s your age?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stanley'),
        ),
        body: Column(
          children: [
            Text('The Question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
