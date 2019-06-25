import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
      // 传参
      items: List<String>.generate(20, (i) => 'item $i')));
}

class MyApp extends StatelessWidget {
  // 接收传递的值
  final List<String> items;
  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hellow flutter',
      home: Scaffold(
        appBar: AppBar(title: Text('ListView 动态数据列表')),
        body: ListView.builder( // 动态列表 ListView.builder
          // 接收值的使用
          itemCount: items.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
