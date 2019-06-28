import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/material.dart' as prefix0; //引入ui库  ImageFilter widget在这里面
class FrostedGlassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints.expand(),//限制条件 可扩展的
            child:Image.network('http://hbimg.b0.upaiyun.com/c8742f3f06b13477ffaa66ad40d3e346be2e4181a8654-QAY4dU_fw658'),
          ),
          Center(
            /*
            child: Opacity(//透明控件
                  opacity: 0.5,
                  child: Container(//容器组件
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(color:Colors.yellow.shade100), //盒子装饰器，进行装饰，设置颜色为灰色
                    child: Center(
                      child: Text(
                        '美女',
                        style: Theme.of(context).textTheme.display3, //设置比较酷炫的字体
                      ),
                    ),
                  ),
                ),
            */
            
             
            child: ClipRect(//裁切长方形
              child: BackdropFilter(//背景滤镜器
                filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0), //图片模糊过滤，横向竖向都设置5.0,
                child: Opacity(//透明控件
                  opacity: 0.5,
                  child: Container(//容器组件
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(color:Colors.yellow.shade100), //盒子装饰器，进行装饰，设置颜色为灰色
                    child: Center(
                      child: Text(
                        'Hello girl',
                        style: Theme.of(context).textTheme.display3, //设置比较酷炫的字体
                      ),
                    ),
                  ),
                )
              )
            ),


          )
          
        ],
      ),
    );
  }
}