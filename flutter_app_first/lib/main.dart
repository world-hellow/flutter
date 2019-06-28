import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wrap流式布局',
      home: WrapLayoutDemo(),
    );
  }
}

class WrapLayoutDemo extends StatefulWidget {
  @override
  _WrapLayoutDemoState createState() => _WrapLayoutDemoState();
}

class _WrapLayoutDemoState extends State<WrapLayoutDemo> {
  List<Widget> list; //声明一个list数组
  @override
  //初始化状态，给list添加值，这时候调用了一个自定义方法`buildAddButton`
  void initState() {
    super.initState();
    list = List<Widget>()..add(buildAddButton());
  }
  //返回一个手势Widget，只用用于显示事件
  Widget buildAddButton() {
    return GestureDetector(
      onTap: () {
        if (list.length < 9) {
          setState(() {
            list.insert(list.length - 1, buildPhoto());
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
             child: Icon(Icons.add),
        ),
      ),
    );
  }

   Widget buildPhoto(){
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.amber,
          child: Center(
            child: Text('照片'),
          ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //得到屏幕的高度和宽度，用来设置Container的宽和高
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container();
  }
}
