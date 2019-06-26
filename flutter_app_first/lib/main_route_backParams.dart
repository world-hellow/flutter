import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: '页面跳转返回数据', home: FirstPage()));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("找小姐姐要电话")),
        body: Center(
          child: RouteButton(),
        ));
  }
}

//跳转的Button
class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('去找小姐姐'),
      onPressed: () {
        //正常页面跳转的方式
        /*
          Navigator.push(context, MaterialPageRoute(
            builder: (context){
              return XiaoJieJie();
            })
          );
        */

        //异步方法跳转 并带回返回参数
       _navigateToXiaoJieJie(context);

      },
    );
  }

  _navigateToXiaoJieJie(BuildContext context) async {
    //async是启用异步方法

    final result = await Navigator.push(context,MaterialPageRoute(
        builder: (context) => XiaoJieJie()
      )
    );  // 等待跳转页 返回按钮执行带回返回结果  然后继续向下执行
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
    //SnackBar是用户操作后，显示提示信息的一个控件，类似Toast，会自动隐藏。
    //SnackBar是以Scaffold的showSnackBar方法来进行显示的。
  }
}

class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我是小姐姐')),
      body: Center(
          child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('大长腿小姐姐'),
            onPressed: () {
              // 返回给前一个页面的数据  Navigator.pop的第二个如参数
              // Navigator.pop(context,'xxxx');  //xxx就是返回的参数
              Navigator.pop(context, '大长腿:1511008888');
            },
          ),
          RaisedButton(
            child: Text('小蛮腰小姐姐'),
            onPressed: () {
              Navigator.pop(context, '小蛮腰:1511009999');
            },
          ),
        ],
      )),
    );
  }
}
