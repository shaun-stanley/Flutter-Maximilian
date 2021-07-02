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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.maxFinite,
            child: Card(
                child: Container(
                  color: Colors.amber,
                  width: 100,
                  child: Text('Chart'),
                ),
                elevation: 5),
          ),
          Card(
            color: Colors.amber,
            child: Text('List of Transactions'),
          )
        ],
      ),
    );
  }
}
