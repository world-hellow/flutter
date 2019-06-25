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
          height: 100.0,
          color: Colors.pink,
          child: MyList(),
          /*
            child: ListView(
              scrollDirection: Axis.horizontal, // 加上这一句 他的子元素才会变为行内块 横向排列
              children: <Widget>[
                Container(
                  // height:100.0, //高度继承父级的高度
                  width: 100.0,
                  color: Colors.red,
                ),
                Container(
                  // height:100.0, //高度继承父级的高度
                  width: 100.0,
                  color: Colors.white,
                ),
                Container(
                  // height:100.0, //高度继承父级的高度
                  width: 100.0,
                  color: Colors.yellow,
                ),
                Container(
                  // height:100.0, //高度继承父级的高度
                  width: 100.0,
                  color: Colors.green,
                ),
                Container(
                  // height:100.0, //高度继承父级的高度
                  width: 100.0,
                  color: Colors.blue,
                ),
                Container(
                  // height:100.0, //高度继承父级的高度
                  width: 100.0,
                  color: Colors.purple,
                ),
                Container(
                  // height:100.0, //高度继承父级的高度
                  width: 100.0,
                  color: Colors.orange,
                )
              ],
            ),
          */
        ),
      ),
    );
  }
}

// listview 提取为组件
class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal, // 加上这一句 他的子元素才会变为行内块 横向排列  horizontal--横向 vertial--纵向
      children: <Widget>[
        Container(
          // height:100.0, //高度继承父级的高度
          width: 100.0,
          color: Colors.red,
        ),
        Container(
          width: 100.0,
          color: Colors.white,
        ),
        Container(
          width: 100.0,
          color: Colors.yellow,
        ),
        Container(
          width: 100.0,
          color: Colors.green,
        ),
        Container(
          width: 100.0,
          color: Colors.blue,
        ),
        Container(
          width: 100.0,
          color: Colors.purple,
        ),
        Container(
          width: 100.0,
          color: Colors.orange,
        )
      ],
    );
  }
}
