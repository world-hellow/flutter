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
          title: Text('布局组件--垂直方向布局'),
        ),
        body: Column(
          /*
            main轴：如果你用column组件，那垂直就是主轴，如果你用Row组件，那水平就是主轴。
            cross轴：cross轴我们称为幅轴，是和主轴垂直的方向。比如Row组件，那垂直就是幅轴，Column组件的幅轴就是水平方向的。
            列布局中
            CrossAxisAlignment.star：居左对齐。
            CrossAxisAlignment.end：居右对齐。
            CrossAxisAlignment.center：居中对齐
          */
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '第一个column,默认对其方式',
              style: TextStyle(color: Colors.pink),
            ),
            Column(
              children: <Widget>[
                Text('默认以最长的一段文字居中对齐的，看起来很别扭'),
                Text('cjdfcjsddcdjjkdbvkandks'),
                Text('ccjsddcdjjkdbvkandks'),
                Text('ddcjjkdbvkandks'),
              ],
            ),
            Text(
              '第二个column,靠左对齐',
              style: TextStyle(color: Colors.pink),
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                Text('cjdfcjsddcdjjkdbvkandks'),
                // Center(
                //   child: Text('666'),
                // ),
                Text('ccjsddcdjjkdbvkandks'),
                Text('ddcjjkdbvkandks'),
              ],
            ),
            Text(
              'Expended的使用',
              style: TextStyle(color: Colors.pink),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text('列布局容器自动分配大小'),
                  Expanded(child:Text('列布局容器中某一项自动分配大小'),),
                  Text('我是路人甲'),
                ],
              ),
            ),
            Text(
              '第3个column,让某一项居中显示',
              style: TextStyle(color: Colors.pink),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text('唯独让我水平方向相对屏幕居中'),
                ),
                Text('ccjsddcdjjkdbvkandks'),
                Text('ddcjjkdbvkandks'),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
