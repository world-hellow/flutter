import 'package:flutter/material.dart';

// 结构稍微有些改动
void main() {
  runApp(MaterialApp(
    title: '导航初次尝试',
    home: FirstScreen(),
  ));
}

// 填坑，如果是1.0以下版本，热更新的时候会有时不能实现导航，这个需要你重新启动一下虚拟机。
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello world',
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter路由入门'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SecondScreen();
                  }),
              );
            },
            color: Colors.pink,
            child: Text('导航按钮'),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航着落页'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed:()=>
            Navigator.pop(context)
          ,
          child: Text('返回上一页'),
          color: Colors.yellow,
        ),
      ),
    );
  }
}
