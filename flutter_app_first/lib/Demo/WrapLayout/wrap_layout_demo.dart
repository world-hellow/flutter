import 'package:flutter/material.dart';

//获取屏幕尺寸  动态插入widget  流式布局  GestureDetector widget用于对一般widget 添加事件
//print()的使用  print('宽:${width}');

class WrapLayoutDemo extends StatefulWidget {
  @override
  _WrapLayoutDemoState createState() => _WrapLayoutDemoState();
}

class _WrapLayoutDemoState extends State<WrapLayoutDemo> {

  List<Widget> list; //声明一个list数组
  @override
  //初始化状态，给list添加值，这时候调用了一个自定义方法`buildAddButton`
  void initState() {
    super.initState();
    list = List<Widget>()..add(buildAddButton());
  }

  @override
  Widget build(BuildContext context) {
    //使用meidaQuery可以很容易的得到屏幕的宽和高
    //得到屏幕的高度和宽度，用来设置Container的宽和高
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    
    print('宽:${width}');
    print('高${height}');

    return Scaffold(
      appBar: AppBar(title: Text('wrap流式布局'),),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: width,
            height: height/2,
            color: Colors.grey,
            /* 
              Wrap中的流式布局可以用Flow很轻松的实现出来
              从效率上讲，Flow肯定会比Wrap高，但Wrap使用起来会更方便一些。
              但是Wrap更多的式在使用了Flex中的一些概念，某种意义上说式跟Row、Column更加相似的
              单行的Wrap跟Row表现几乎一致，单列的Wrap则跟Column表现几乎一致。
              但Row与Column都是单行单列的，Wrap则突破了这个限制，mainAxis上空间不足时，则向crossAxis上去扩展显示。
             */
            child: Wrap(    //流式布局，
              children: list,
              spacing: 28.0,  //块之间的设置间距  注释之后也会有一个默认间距
            ),
          ),
        ),
      ),
    );
  }

  //返回一个手势Widget，用于显示添加事件
  Widget buildAddButton() {
    return GestureDetector(
      onTap: () {
        if (list.length < 9) {
          setState(() {
            list.insert(list.length - 1, buildPhoto());
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.blueGrey,
          width: 80.0,
          height: 80.0,
          child: Icon(Icons.add,color: Colors.black,),
        ),
      ),
    );
  }

   Widget buildPhoto(){
    return Padding(
        padding: const EdgeInsets.all(8.0),//设置新增块的内边距
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.amber,
          child: Center(
            child: Text('照片'),
          ),
        ),
    );
  }

}