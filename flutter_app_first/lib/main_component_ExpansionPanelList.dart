import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExpansionPanelList',
      home: ExpansionPanelListDemo(),
    );
  }
}


//自定义扩展状态类
//为了方便管理制作了一个ExpandStateBean类，里边就是两个状态，一个是是否展开isOpen,另一个索引值。
class ExpandStateBean{
  var isOpen;
  var index;
  ExpandStateBean(this.index,this.isOpen);
}

// widget
class ExpansionPanelListDemo extends StatefulWidget {
  @override
  _ExpansionPanelListDemoState createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  
  //相关数据的构建声明
  var currentPanelIndex = -1;
  List<int> mList;//控制创建个数的  组成一个int类型数组，用来控制索引
  List<ExpandStateBean> expandStateList;//存储展开状态的列表， ExpandStateBean是自定义的类
  //构造方法，调用这个类的时候自动执行
  _ExpansionPanelListDemoState(){
    mList = new List(); 
    expandStateList = new List();
    //遍历为两个List进行赋值
    for(int i=0;i<10;i++){
      mList.add(i);
      expandStateList.add(ExpandStateBean(i,false));
    }
  }

  //修改展开与闭合的内部方法
  _setCurrentIndex(int index, isExpand){
    setState((){
      //遍历可展开状态列表
      expandStateList.forEach((item){
        if(item.index==index){
          //取反，经典取反方法
          item.isOpen = !isExpand;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('ExpansionPanelList')),
      body: SingleChildScrollView( //加入可滚动组件
        child: ExpansionPanelList(
          //交互回掉属性，里边是个匿名函数  
          //点击外层列表展开内容时触发
          expansionCallback: (index,bol){//点击和交互的回掉事件，有两个参数，第一个是触发动作的索引，第二个是布尔类型的触发值
            //调用内部方法
            _setCurrentIndex(index, bol);
          },
          //列表的子元素，里边多是一个List数组
          children: mList.map((index){//进行map操作，然后用toList再次组成List
            return ExpansionPanel(
              //外层显示按钮
              headerBuilder: (context,isExpanded){
                return ListTile(
                  title:Text('This is header No. $index')
                );
              },
              //展开的内容
              body:ListTile(
                title:Text('body expansion no.$index')
              ),
              isExpanded: expandStateList[index].isOpen
            );
          }).toList(),
        ),
      ),
    );
  }
}