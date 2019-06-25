import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'hello flutter',
        home: Scaffold(
          appBar: AppBar(
            title: Text('布局组件--层叠布局Stack'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Text('在头像上方再放入一个容器，容器里边写上字，这时候我们就可以使用Stack布局'),
              CircleAvatar(
                backgroundColor: Colors.yellow,
                backgroundImage: new NetworkImage(
                    'http://blogimages.jspang.com/blogtouxiang1.jpg'),
                radius: 50.0, // 控制大小
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  gradient: LinearGradient(
                      colors: [Colors.lightBlue, Colors.green, Colors.pink]),
                ),
                child: Text(
                  'hello flutter',
                  style: TextStyle(
                    color: Colors.lightGreen,
                  ),
                ),
              ),
              
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    '下方两者合体,奥特曼变身',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Stack(
                alignment: const FractionalOffset(0.5, 1), //取值0-1 0左对齐或者上对其  1右对齐或者下对齐
                // children中先写的会被覆盖在下面
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.yellow,
                    backgroundImage: new NetworkImage(
                        'http://blogimages.jspang.com/blogtouxiang1.jpg'),
                    radius: 50.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      gradient: LinearGradient(colors: [
                        Colors.lightBlue,
                        Colors.green,
                        Colors.pink
                      ]),
                    ),
                    child: Text(
                      'hello flutter',
                      style: TextStyle(
                        color: Colors.lightGreen,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
