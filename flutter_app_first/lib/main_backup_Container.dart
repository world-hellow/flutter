// material-ui
import 'package:flutter/material.dart';

// 主函数 入口函数
void main() {
  runApp(MyApp());
}

// 声明MyApp  类似ES6的class 但是不一样
class MyApp extends StatelessWidget {
  // 重新build方法
  @override
  Widget build(BuildContext context) {
    // 返回一个naterial风格的组件
    return MaterialApp(
      title: 'welcome to flutter',
      home: Scaffold(
        // 创建一个bar（导航栏），并添加文本
        appBar: AppBar(
          title: Text('hello world'),
        ),
        body: Center(
          // center组件主要指上下左右的中间  相当于布局组件
          child: Container(
            // Container相当于html中的div 如果不设置宽高  相当于整个屏的横竖100%
            child: Text(
              '袁大头万岁',
              style: TextStyle(
                fontSize: 12.0, // 不是整数 必须是浮点数
                color: Color.fromARGB(255, 255, 155, 155), //A 透明度
              ),
            ),
            alignment: Alignment.topLeft,
            /*
              container里面内容的对其方式  折叠child代码 可清晰查看
              center 整屏居中 centerLeft centerRight;
              bottomCenter  整屏的底部居中 bottomLeft bottomRight;
              topCenter  整屏的上居中 topLeft topRight;
            */
            width: 600.0, //记住不是整数
            height: 400.0,
            //color: Colors.lightBlue,  //Colors 要加s  设置的是整个container的背景色
            padding: const EdgeInsets.fromLTRB(10.0,30.0,0.0,0.0), //all() 上下左右都是同一个值  fromLTRB() 左上右下分别设置
            margin:const EdgeInsets.all(10.0),
            decoration: new BoxDecoration( // 注意 color 和 decoration 不能同时出现
              gradient: const LinearGradient(
                colors: [Colors.lightBlue,Colors.green,Colors.pink]
              ),
              border: Border.all(
                width: 5.0,
                color: Colors.yellow,
              )
            ) ,
          ),
        ),
      ),
    );
  }
}
