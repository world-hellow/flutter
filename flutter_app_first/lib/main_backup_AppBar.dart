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
          title: Text(
            'hellow yzx',
            textAlign:TextAlign.center,//未生效
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.pink,
            ),
          )
        ),
      ),
    );
  }
}
