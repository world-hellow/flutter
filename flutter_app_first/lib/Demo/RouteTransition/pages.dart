import 'package:flutter/material.dart';
// action2 路由效果的使用
import 'custome_router.dart';
// 改写Navigator.push(CustomeRoute(SecondPage()))

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text('firstpage',style: TextStyle(
          fontSize: 30.0,
          color: Colors.blue
        ),),
        //这个值是AppBar 滚动时的融合程度，一般有滚动时默认是4.0，现在我们设置成0.0，就是和也main完全融合了。
        //效果：不设置顶部导航栏下边缘会有淡黑色的阴影
        elevation: 0.0,
        //设置导航栏背景色
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text('去secondPage'),
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return SecondPage();
              // }));
              Navigator.push(context,CustomRoute(SecondPage()));
            },
          ),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.yellow])),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('SecondPage',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.pink,
            )),
        elevation: 0.0,
        leading: Container( //会覆盖原生带的返回按钮 内部不加内容  显示空
          // child:Text('返回')
        ),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text('返回'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.pink, Colors.yellow])),
        ),
      ),
    );
  }
}
