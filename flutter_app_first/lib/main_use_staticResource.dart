import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '静态资源的使用',
      home: Scaffold(
        appBar: AppBar(
          title: Text('静态资源的使用'),
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            Image.asset('images/sky.png'),
            Text('flutter中使用静态资源  需要在 pubspec.yaml 中先配置资源'),
            Image.asset('images/desc.png'),

          
          ],
        )),
      ),
    );
  }
}
