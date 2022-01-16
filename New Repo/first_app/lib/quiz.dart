import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final questions;
  final Function answerQuestion;
  final questionIndex;

  Quiz({this.questions, this.answerQuestion, this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers']).map((answer) {
          return Answer(
              () => answerQuestion(answer['"score"']), answer["text"]);
        }).toList()
      ],
    );
  }
}
