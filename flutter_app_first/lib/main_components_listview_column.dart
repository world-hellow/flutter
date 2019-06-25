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
          title: Text( 'ListView Column')
        ),
        body: ListView(
          children: <Widget>[ // 加入任何组件都是可以的
            ListTile(
              leading: Icon(Icons.supervisor_account),//图标
              title: Text('列表第一项'),
            ),
            ListTile(
              leading: Icon(Icons.time_to_leave),//图标
              title: Text('列表第二项'),
            ),
            ListTile(
              leading: Icon(Icons.add),//图标
              title: Text('列表第三项'),
            ),
            Image.network('http://www.btbtdy.me/uploads/s/201906/b839f3640489426a.jpg'),
            Image.network('http://www.btbtdy.me/uploads/s/201906/1c18ba633cd6e992.jpg'),
            Image.network('http://www.btbtdy.me/uploads/s/201905/4acad4c2ada63b2c.jpg'),
            Image.network('http://www.btbtdy.me/uploads/s/201906/6fbe27f9634eca53.jpg')
          ],
        ),
      ),
    );
  }
}
