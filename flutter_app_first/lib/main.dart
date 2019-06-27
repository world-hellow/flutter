import 'package:flutter/material.dart';
//毛玻璃效果
import 'frosted_glass_emo.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '路由动画效果',
      home: Scaffold(
      body:FrostedGlassDemo(),
      ),
    );
  }
}