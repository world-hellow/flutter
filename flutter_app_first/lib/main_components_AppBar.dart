import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'hellow flutter',
      home: Scaffold(
        appBar: AppBar(
          //这个值是AppBar 滚动时的融合程度，一般有滚动时默认是4.0，现在我们设置成0.0，就是和也main完全融合了。
          //效果：不设置顶部导航栏下边缘会有淡黑色的阴影
          elevation: 0.0,
          //设置导航栏背景色
          backgroundColor: Colors.pink,
          leading: Container( //会覆盖原生带的返回按钮 内部不加内容  显示空
          // child:Text('返回')
          ),
          title: Text('hellow yzx',
            textAlign:TextAlign.center,//未生效
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.pink,
            ),
          )
        ),
      ),
    );
  }
}
