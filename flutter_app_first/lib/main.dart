import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hellow flutter',
      home: Scaffold(
        appBar: AppBar(title: Text('ListView row')),
        body: Container(
          height: 20.0,
          color: Colors.pink,
          child: Text('666'),
        ),
      ),
    );
  }
}