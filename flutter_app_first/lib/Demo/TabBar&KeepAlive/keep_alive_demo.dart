import 'package:flutter/material.dart';
class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

//效果：同一个widget多次调用  每个widget进行操作改变状态  每个widge保持自己的状态  
//混入AutomaticKeepAliveClientMixin，这是保持状态的关键   
//然后重写wantKeppAlive 的值为true。
class _TabPageState extends State<TabPage> with AutomaticKeepAliveClientMixin {
  int _counter = 0;
  //重写keepAlive 为ture ，就是可以有记忆功能了。
  //重写keepAlive 为ture ，就是可以有记忆功能了。
  @override
  bool get wantKeepAlive => true;//改为fasle 改变状态后  再次切换回来  状态会重置
  //声明一个内部方法，用来点击按钮后增加数量
  void _incrementCounter(){
    setState((){ _counter++;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('点一下加1:'),
            Text(
              '$_counter',
              style:Theme.of(context).textTheme.display1,//酷炫的字体效果
            )
          ],
        ),
      ),

      //增加一个悬浮按钮，点击时触犯_incrementCounter方法
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}