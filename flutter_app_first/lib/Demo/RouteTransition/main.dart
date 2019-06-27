import 'package:flutter/material.dart';
import 'pages.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '路由动画效果',
      home: FirstPage(),
    );
  }
}