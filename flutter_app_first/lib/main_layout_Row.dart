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
          title: Text('布局组件--水平布局'),
        ),
        body: Center(
        child: Column(
          children: <Widget>[
            //非灵活排列
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  color: Colors.pink,
                  child: Text('非灵活排列'),
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.pink,
                  child: Text('非灵活排列'),
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.pink,
                  child: Text('非灵活排列'),
                )
              ],
            ),
            // 灵活排列  Expanded 会自动分配宽度
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.pink,
                    child: Text('灵活排列 1个'),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.pink,
                    child: Text('灵活排列 2个'),
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.pink,
                    child: Text('灵活排列 2个'),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  color: Colors.yellow,
                  child: Text('组合使用'),
                ),
                Expanded(
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.pink,
                    child: Text('灵活非灵活组合使用'),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.yellow,
                  child: Text('组合使用'),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
