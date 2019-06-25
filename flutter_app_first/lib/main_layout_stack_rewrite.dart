import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    // 将层叠组件摘出
    var stack = Stack(
      alignment: FractionalOffset(0.5,1),
      children: <Widget>[
        CircleAvatar(
            backgroundImage: NetworkImage(
              'http://blogimages.jspang.com/blogtouxiang1.jpg',
            ),
            radius: 50.0),
        Container(
          child: Text('我是描述文字'),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.pink, Colors.yellow])),
        ),
      ],
    );

    
    return MaterialApp(
      title: 'hello world',
      home: Scaffold(
        appBar: AppBar(
          title: Text('stack布局重写'),
        ),
        body: stack,
      ),
    );
  }
}
