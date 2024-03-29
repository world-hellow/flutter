
/* 
  Flutter提供了强大的拖拽控件，可以灵活定制，并且非常简单
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
      home: DraggableDemo(),
    );
  }
}

//draggable_demo
class DraggableDemo extends StatefulWidget {
  @override
  _DraggableDemoState createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  Color _draggableColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: <Widget>[
        DraggableWidget(
          offset: Offset(80.0, 80.0),
          widgetColor: Colors.tealAccent,
        ),
        DraggableWidget(
          offset: Offset(180.0, 80.0),
          widgetColor: Colors.redAccent,
        ),
        Center(
          /* 
            DragTarget是用来接收拖拽事件的控件，
            当把Draggable放到DragTarget里时，他会接收Draggable传递过来的值，然后用生成器改变组件状态。
           */
          child: DragTarget(
            onAccept: (Color color) {//当拖拽到控件里时触发，经常在这里得到传递过来的值
              _draggableColor = color;
            }, 
            builder: (context, candidateData, rejectedData) {//builder: 构造器，里边进行修改child值
              return Container(
                width: 200.0,
                height: 200.0,
                color: _draggableColor,
              );
            }
          ),
        )
      ],
    ));
  }
}

//draggable_widget.
class DraggableWidget extends StatefulWidget {
  final Offset offset;
  final Color widgetColor;
  const DraggableWidget({Key key, this.offset, this.widgetColor}):super(key:key);
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Offset offset = Offset(0.0,0.0);
  @override
  void initState() {
    super.initState();
    offset = widget.offset;
  }

  @override
  Widget build(BuildContext context) {
   return Positioned(
     left: offset.dx,
     top:offset.dy,
     /* 
      Draggable控件负责就是拖拽，父层使用了Draggable，它的子元素就是可以拖动的，
      子元素可以实容器，可以是图片。用起来非常的灵活。
      */
     child: Draggable(
       data:widget.widgetColor, //是要传递的参数，在DragTarget里，会接受到这个参数。当然要在拖拽控件推拽到DragTarget的时候。
       child: Container( // 在这里放置你要拖拽的元素，可以是容器，也可以是图片和文字
         width: 100,
         height: 100,
         color:widget.widgetColor,
       ),
       feedback:Container(//常用于设置推拽元素时的样子，在案例中当推拽的时候，我们把它的颜色透明度变成了50%。当然你还可以改变它的大小。
         width: 100.0,
         height: 100.0,
         color: widget.widgetColor.withOpacity(0.5),
       ),
       onDraggableCanceled: (Velocity velocity, Offset offset){//是当松开时的相应事件，经常用来改变推拽时到达的位置，改变时用setState来进行
         setState(() {
            this.offset = offset;
         });
       },
     ),
   );
  }
}