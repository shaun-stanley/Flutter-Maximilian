import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int ResultScore;
  final resetHandler;

  String get ResultPhrase {
    String ResultText;
    if (ResultScore <= 8) {
      ResultText = 'You are Awesome!';
    } else if (ResultScore <= 12) {
      ResultText = 'Ok';
    } else if (ResultScore <= 16) {
      ResultText = 'You are the best!';
    } else {
      ResultText = 'You are better than the best!';
    }
    return ResultText;
  }

  Result(this.ResultScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            ResultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetHandler, child: Text('Restart Quiz!'))
        ],
      ),
    );
  }
}
