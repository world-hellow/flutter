/* 
  Flutter有两套UI模板，一套是material,另一套就是Cupertino。
  Cupertino主要针对的的就是IOS系统的UI，所以用的右滑返回上一级就是在这个Cupertino里。
  
  引入了cupertino的包之后，就可以使用皮肤和交互效果的特性了。
  要用的右滑返回上一页也是皮肤的交互特性，直接使用就可以了
  

  在Cupertino下也有很多Widget控件，他们都是以Cupertino开头的，
  这就让我们很好区分，当然两种皮肤是可以进行混用的
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// material widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '右滑返回上一页',
      home: RightBackDemo(),
    );
  }
}
//cupertino widget
class RightBackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(//CupertinoPageScaffold 和material中的Scaffold类似，不过他里边的参数是child
      child: Center(
        child: Container(
          height: 100.0,
          width: 100.0,
          color: CupertinoColors.activeBlue,
          child: CupertinoButton(
            child: Icon(CupertinoIcons.add),
            onPressed: () {
              Navigator.of(context).push(CupertinoPageRoute(//只要使用CupertinoPageRoute打开的子页面，就可以实现右滑返回上一级。
                  builder: (BuildContext context) {return RightBackDemo();}
                )
              );
            },
          ),
        ),
      ),
    );
  }
}