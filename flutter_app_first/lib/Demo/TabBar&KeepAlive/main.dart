import 'package:flutter/material.dart';
//点击实现自增的页面
import 'keep_alive_demo.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '选项卡切换保持原来状态',
      home:KeepAliveDemo(),
    );
  }
}

class KeepAliveDemo extends StatefulWidget {
  @override
  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}
/* 
  with是dart的关键字，意思是混入的意思
  可以将一个或者多个类的功能添加到自己的类无需继承这些类，避免多重继承导致的问题。
  with后边是Mixin，而不是普通的Widget
  SingleTickerProviderStateMixin 
  主要是我们初始化TabController时，需要用到vsync，垂直属性，然后传递this
 */
class _KeepAliveDemoState extends State<KeepAliveDemo> with SingleTickerProviderStateMixin {
  //初始化TabController
  TabController _controller;
  @override
  void initState(){
    super.initState();
     _controller = TabController(length:4, vsync: this); //length当其为3时：TabBar可以设置4个icon位，但是点击第四个时会报错
  }
  //重写被释放的方法,只释放TabController
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keep Alive Demo'),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(icon:Icon(Icons.directions_car)),
            Tab(icon:Icon(Icons.directions_transit)),
            Tab(icon:Icon(Icons.directions_bike)),
            Tab(icon:Icon(Icons.directions_run)),
          ],
        ),
      ),
      /* 
        body: TabBarView(
          controller: _controller,
          children: <Widget>[
            Text('1111'),
            Text('2222'),
            Text('3333'),
            Text('4444'),
          ],
        ), 
      */
      body: TabBarView(
          controller: _controller,
          children: <Widget>[
            TabPage(),
            TabPage(),
            TabPage(),
            TabPage(),
          ],
        ), 
    );
  }
}