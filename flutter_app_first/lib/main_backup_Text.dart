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
          child: Text(
            '袁大头万岁YZX，蹦下卡拉卡，666来一波，嗨起来傻儿子，哈哈哈哈',
            textAlign:TextAlign.center, //属性  文字居中 其他值 left center right start end
            //文本一行显示  溢出处理  。。。
            maxLines: 1,
            overflow: TextOverflow.ellipsis, //clip 切除  fade 渐变
            style: TextStyle(
              fontSize: 12.0, // 不是整数 必须是浮点数
              color: Color.fromARGB(255, 255, 155, 155), //A 透明度
              // 下划线
              decoration: TextDecoration.lineThrough, // underline
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}
