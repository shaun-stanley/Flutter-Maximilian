import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String printText;

  TextOutput(this.printText);

  @override
  Widget build(BuildContext context) {
    return Text(printText);
  }
}
