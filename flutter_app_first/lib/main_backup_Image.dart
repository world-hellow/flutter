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
            /*
              asset()   app中的目录来引入 （项目的包当中）;
              file()    本地路径  存在于手机中的某个地方（本地）；
              memory()  简单理解为他是一个类似图片的形式，但是不准确;
              network() 图片都是来源于网络（最常用）
            */
            child: new Image.network(
              'http://www.btbtdy.me/uploads/s/201906/b839f3640489426a.jpg',
              fit: BoxFit.scaleDown , 
              /* fit 属性值解析
                BoxFit.contain   尽量充满容器 但是会保持原图的比例  
                BoxFit.fill      图片完全充满容器  图片可能会变形 （以容器为中心）
                BoxFit.cover     图片充满容器  保持原有比例  图片不变形  但是可能会被裁切
                BoxFit.fitWidth  横向必须是充满的 不管纵向会怎样  
                BoxFit.fitHeight 纵向必须是充满的
                BoxFit.scaleDown 保持原图片的大小  （不常用）
              */

              //图片混合模式  类似给图片加上一层带颜色的遮罩
              color: Colors.lightBlue,
              colorBlendMode: BlendMode.lighten,
              
              // repeat
              repeat: ImageRepeat.repeatY,// norepeat 默认值 不重复  repeat  以中间为基础  不断的重复 把容器填满

            ),
            
            width: 300.0,
            height: 300.0,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
