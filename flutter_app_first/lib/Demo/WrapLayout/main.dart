import 'package:flutter/material.dart';
import 'wrap_layout_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wrap流式布局',
      home: WrapLayoutDemo(),
    );
  }
}



