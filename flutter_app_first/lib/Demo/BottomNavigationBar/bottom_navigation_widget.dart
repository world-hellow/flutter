import 'package:flutter/material.dart';
//step2 底部导航对应的四个页面
import 'pages/home_screen.dart';
import 'pages/email_screen.dart';
import 'pages/pages_screen.dart';
import 'pages/airplay_screen.dart';

//StatefulWidget 的继承
class BottomNavigationWidget extends StatefulWidget {
  //第一个部分是继承于StatefullWidget
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  //第二个部分是继承于State
  final _BottomNavigationWidgetColor = Colors.blue; //定义导航文字图标的颜色
  //step2
  int _currentIndex = 0;
  List<Widget> list = List();
  @override
  void initState() {
    //initState()方法，把刚才做好的页面进行初始化到一个Widget数组中
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirplayScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //step2
        body: list[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          //step2
          currentIndex: _currentIndex,
          onTap: (int index) {//index 索引
            setState(() {
              _currentIndex = index;
            });
          },

          type: BottomNavigationBarType.fixed,
          items: [
            //第一项
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: _BottomNavigationWidgetColor,
                ),
                title: Text(
                  'home',
                  style: TextStyle(color: _BottomNavigationWidgetColor),
                )),
            //第二项
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.email,
                  color: _BottomNavigationWidgetColor,
                ),
                title: Text(
                  'email',
                  style: TextStyle(color: _BottomNavigationWidgetColor),
                )),
            //第三项
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pages,
                  color: _BottomNavigationWidgetColor,
                ),
                title: Text(
                  'pages',
                  style: TextStyle(color: _BottomNavigationWidgetColor),
                )),
            //第四项
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplay,
                  color: _BottomNavigationWidgetColor,
                ),
                title: Text(
                  'airplay',
                  style: TextStyle(color: _BottomNavigationWidgetColor),
                )),
          ],
        ));
  }
}
