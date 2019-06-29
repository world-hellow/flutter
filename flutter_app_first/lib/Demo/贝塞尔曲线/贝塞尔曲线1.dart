import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '贝塞尔曲线1',
      debugShowCheckedModeBanner: false,//去除上面的debug显示
      theme:ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: <Widget>[
          /* 
            clipPath控件可以把其内部的子控件切割，它有两个主要属性（参数）:
            child :要切割的元素，可以是容器，图片.....
            clipper : 切割的路径，这个要和CustomClipper对象配合使用。
           */
          ClipPath(
            clipper:BottomClipper(),//BootomClipper是我们自定义的一个对象，里边主要就是切割的路径。
            child: Container(
              color:Colors.deepPurpleAccent,
              height: 200.0,
            ),
          ),
          Container(
            child: Center(
              child: Text('lalala'),
            ),
          )
        ],
      )
    );
  }
}
// 裁剪/切割的路径
// 主要的贝塞尔曲线路径就写在getClip方法里，它返回一段路径
// 一个二阶的贝塞尔曲线是需要控制点和终点的，控制点就像一块磁铁，把直线吸引过去，
// 形成一个完美的弧度，这个弧度就是贝塞尔曲线了。
class BottomClipper extends CustomClipper<Path>{
  @override
    Path getClip(Size size) {
      // TODO: implement getClip
      var path = Path();
      path.lineTo(0, 0);
      path.lineTo(0, size.height-30);
      var firstControlPoint =Offset(size.width/2,size.height);
      var firstEndPoint = Offset(size.width,size.height-30);

      path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

      path.lineTo(size.width, size.height-30);
      path.lineTo(size.width, 0);
    
      return path;

    }
    @override
      bool shouldReclip(CustomClipper<Path> oldClipper) {
        // TODO: implement shouldReclip
        return false;
      }
}