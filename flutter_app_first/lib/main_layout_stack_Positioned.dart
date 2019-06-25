import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    var stack = Stack(
      //alignment: FractionalOffset(0.5,1),
      children: <Widget>[
        CircleAvatar(
            backgroundImage: NetworkImage(
              'http://blogimages.jspang.com/blogtouxiang1.jpg',
            ),
            radius: 50.0),
        Positioned( // Positioned组件与CircleAvatar组件一起使用 超出CircleAvatar组件的部分自动隐藏
          /*
            bottom: 距离层叠组件下边的距离
            left：距离层叠组件左边的距离
            top：距离层叠组件上边的距离
            right：距离层叠组件右边的距离
            width: 层叠定位组件的宽度
            height: 层叠定位组件的高度
           */
          top: 0.0,
          left: 10.0,
          child: Container(
            child: Text('我是positioned组件1'),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.pink, Colors.yellow])),
          ),
        ),
        Positioned(
          top: 50.0,
          left: 50.0,
          child: Container(
            child: Text('我是positioned组件2'),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.pink, Colors.yellow])),
          ),
        ),
        // CircleAvatar(
        //     backgroundImage: NetworkImage(
        //       'http://blogimages.jspang.com/blogtouxiang1.jpg',
        //     ),
        //     radius: 50.0),
      ],
    );
    return MaterialApp(
      title: 'hello world',
      home: Scaffold(
        appBar: AppBar(
          title: Text('stack中Positioned组件的使用'),
        ),
        body: stack,
      ),
    );
  }
}
