import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iPay',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('iPay'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.amber,
              elevation: 3,
              child: Text('Hey'),
            ),
          ),
          Container(
            child: Card(
              color: Colors.amber,
              elevation: 3,
              child: Text('Bye'),
            ),
          )
        ],
      ),
    );
  }
}
