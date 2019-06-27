import 'package:flutter/material.dart';

//底部导航栏切换的子页面  statefulwidget的形式书写
class EachView extends StatefulWidget {
  String _title;//设置了一个内部的_title变量，这个变量是从主页面传递过来的，
  EachView(this._title);
  @override
  _EachViewState createState() => _EachViewState();
}

class _EachViewState extends State<EachView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget._title),),
      body: Center(child: Text(widget._title),),
    );
  }
}
