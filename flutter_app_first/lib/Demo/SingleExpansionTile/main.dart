import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExpansionTile',
      home: Scaffold(
        appBar: AppBar(title: Text('ExpansionTile'),),
        body: Column(

          children:<Widget>[
            ExpansionTile( //无法直接设置收起时ExpansionTile的背景色
              title: Text('Expansion Tile'),//闭合时显示的标题，这个部分经常使用Text Widget
              leading: Icon(Icons.ac_unit),//标题左侧图标，多是用来修饰
              backgroundColor: Colors.pink[50],//展开时的背景颜色，当然也是有过度动画的，效果非常好。展开时ExpansionTile背景色也会改变
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.ac_unit) ,
                  title:Text('Tile 内容'),
                  subtitle:Text('subtitle'),
                )
              ],//子元素，是一个数组，可以放入多个元素
              //trailing: ,// 右侧的箭头，你可以自行替换但是我觉的很少替换，因为谷歌已经表现的很完美了
              initiallyExpanded: false,//初始状态是否展开，为true时，是展开，默认为false，是不展开。
            ),
          ]
        ),
      ),
    );
  }
}



