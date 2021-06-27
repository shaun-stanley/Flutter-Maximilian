import 'package:flutter/material.dart';

import './text_output.dart';

class TextControl extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _printText = 'Hello World!';
  @override
  Widget build(BuildContext context) {
    return Column(children: [
            TextOutput(_printText),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text('Change Text'),
              onPressed: () {
                setState(() {
                  _printText = 'Hello Universe!';
                });
              },
            ),
          ]);