import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _printText = 'Hello World!';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Assignment 01'),
          ),
          body: Column(children: [
            Text(_printText),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text('Change Text'),
              onPressed: () {
                setState(() {
                  _printText = 'Hello Universe!';
                });
              },
            ),
          ])),
    );
  }
}
