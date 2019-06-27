import 'package:flutter/material.dart';
//各种路由动画

/* 
  此处自定义的路由方法，自定义首先要继承于通用的路由的构造器类PageRouterBuilder。
  继承之后重写父类的CustomRoute构造方法。
  构造方法可以简单理解为：只要以调用这个类或者说是Widget，构造方法里的所有代码就执行了。
 */
class CustomRoute extends PageRouteBuilder{
  final Widget widget;
  CustomRoute(this.widget):super(
    transitionDuration: const Duration(seconds: 1), //transitionDuration：设置动画持续的时间，建议再1和2之间。
    pageBuilder:(
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2
      ){
          return widget;
      },
    transitionsBuilder:(
          BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2,
          Widget child
    ){
      return 
      //渐隐渐现过渡效果
      /* FadeTransition( // FadeTransition:渐隐渐现过渡效果，主要设置opactiy（透明度）属性，值是0.0-1.0
        opacity: Tween(begin:0.0,end :1.0).animate(//animate :动画的样式，一般使用动画曲线组件（CurvedAnimation）
          CurvedAnimation(
            parent:animation1,
            curve:Curves.fastOutSlowIn//curve: 设置动画的节奏，也就是常说的曲线，Flutter准备了很多节奏，通过改变动画取消可以做出很多不同的效果。
          )
        ),
        child: child,
      ); */

      // 缩放路由效果
      /* ScaleTransition(
        scale:Tween(begin:0.0,end:1.0).animate(CurvedAnimation(
        parent:animation1,
        curve: Curves.fastOutSlowIn
        )),
        child:child
      ); */

      // 旋转+缩放路由动画
      /* RotationTransition(
        turns:Tween(begin:0.0,end:1.0)
        .animate(CurvedAnimation(
          parent: animation1,
          curve: Curves.fastOutSlowIn
        )),
        child:ScaleTransition(
          scale:Tween(begin: 0.0,end:1.0)
          .animate(CurvedAnimation(
              parent: animation1,
              curve:Curves.fastOutSlowIn
          )),
          child: child,
        )
      ); */

      //左右滑动路由动画
      SlideTransition(
        position: Tween<Offset>(
          begin: Offset(-1.0, 0.0),
          end:Offset(0.0, 0.0)
        )
        .animate(CurvedAnimation(
          parent: animation1,
          curve: Curves.fastOutSlowIn
        )),
        child: child,
      );
    }
  );
}