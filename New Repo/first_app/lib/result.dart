import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText = "You did it";
    if (resultScore >= 20) {
      resultText = "You are awesome!";
    } else if (resultScore >= 15) {
      resultText = "You are okay...";
    } else {
      resultText = "Ehh...";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhrase),
    );
  }
}
