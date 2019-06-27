import 'package:flutter/material.dart';
import 'each_view.dart';
//statefulwidget
class BottomAppBarDemo extends StatefulWidget {
  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  //addAction
  List<Widget> _eachView = List(); //创建视图数组
  int _currentIndex = 0; //数组索引,通过改变索引值改变视图
  @override
  void initState() {
    _eachView..add(EachView('Home'))..add(EachView('Me'));
    super.initState();
  }
  /* compare with StatelessWidget
    List<Widget> list = List();//创建视图数组
    int _currentIndex = 0;
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
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('不规则底部工具栏制作'),
      // ),
      body: _eachView[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return EachView('newPage');
          }));
        },
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                }),
            IconButton(
                icon: Icon(Icons.my_location),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                }),
          ],
        ),
      ),
    );
  }
}