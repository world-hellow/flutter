
/* 
  Flutter中有很多提示控件,比如Dialog、Snackbar和BottomSheet这些操作都是比较重量级的，存在屏幕上的时间较长或者会直接打断用户的操作。
  轻量级操作提示Tooltip
  Tooltip是继承于StatefulWidget的一个Widget，它并不需要调出方法，当用户长按被Tooltip包裹的Widget时，会自动弹出相应的操作提示。
 */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TollTip',
      home: ToolTipDemo(),
    );
  }
}
class ToolTipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('tool tips demo')),
      body:Center(
        child: Tooltip(//当用户长按被Tooltip包裹的Widget时，会自动弹出相应的操作提示
          message: '不要碰我，我怕痒',
          child: new Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561897719927&di=5d04bceef74bdaa9738e6ac3d56a5667&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201703%2F13%2F20170313012900_VYSJT.thumb.700_0.jpeg',
            fit: BoxFit.scaleDown ,
          )
        ),
      )
    );
  }
}
