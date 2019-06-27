import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'BottomAppBar', home: BottomAppBarWidget()));
}

class BottomAppBarWidget extends StatefulWidget {
  @override
  _BottomAppBarWidgetState createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomAppBar底部导航条的使用'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      //floatingActionButton 的定位属性不再widget内  平级关系
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //BottomAppBar 是底部工具栏的意思，这个要比BottomNavigationBar widget灵活很多，
      //可以放置文字和图标，当然也可以放置容器。

      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue, //底部导航条的颜色
        //CircularNotchedRectangle(),有圆形缺口的矩形。
        //如果没有设置FAB的floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        //和正常的底部导航条一样  圆形缺口并不会显示出来
        shape:
            CircularNotchedRectangle(), 
        child: Row( //可以放置大部分Widget，让我们随心所欲的设计底栏
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[ //布局的时候不会自动留出圆弧坑的位置
            IconButton(
                icon: Icon(Icons.home), 
                color: Colors.white, 
                onPressed: () {}),
            RaisedButton(child: Text('文字'),),
            Text('666')
          ],
        ),
      ),
    );
  }
}