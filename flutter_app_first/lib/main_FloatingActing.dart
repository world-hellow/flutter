import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'navigation-bottom',
        //Flutter支持自定义主题，如果使用自定义主题，设置的内容项是非常多的，麻烦
        //Flutter贴心的为给我们准备了主题样本，primarySwatch ：现在支持18种主题样本了
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Text('666');
            }));
          },
          tooltip: '长按提示文字',
          child: Icon( //按钮上展示的图标
            Icons.add,
            color: Colors.white,
          ),
        ));
  }
}
