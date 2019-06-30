import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '进入App的启动效果',
      debugShowCheckedModeBanner: false,//去除上面的debug显示
      theme:ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

//with 后面跟着的时mixin Object 而不是一个widget
class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;
  //初始化状态
  void initState() { 
    super.initState();
    /* 
      AnimationController是Animation的一个子类，它可以控制Animation, 
      也就是说它是来控制动画的，比如说控制动画的执行时间。
      vsync:this :垂直同步设置，使用this就可以了
      duration : 动画持续时间，这个可以使用seconds秒，
      也可以使用milliseconds毫秒，工作中经常使用毫秒，因为秒还是太粗糙了。
      段代码就是控制动画的一个典型应用：
      _controller = AnimationController(vsync:this,duration:Duration(milliseconds:3000));
      _animation = Tween(begin: 0.0,end:1.0).animate(_controller);
      这段代码的意思是，设置一个动画控制器，这个动画控制器控制动画执行时间是3000毫秒。
      然后我们设置了一段动画，动画使用了动画控制器的约定。
     */
    _controller = AnimationController(vsync:this,duration:Duration(milliseconds:3000));
    _animation = Tween(begin: 0.0,end:1.0).animate(_controller);
    /*
      它可以监听到动画的执行状态，
      我们这里只监听动画是否结束，
      如果结束则执行页面跳转动作。
     */
    _animation.addStatusListener((status){
      if(status == AnimationStatus.completed){//AnimationStatus.completed:表示动画已经执行完毕
        Navigator.of(context).pushAndRemoveUntil(//跳转页面，并销毁当前控件。
          MaterialPageRoute(builder: (context)=>MyHomePage()), 
          (route)=> route==null
        );
      }
    });
    //播放动画
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // widget
  @override
  Widget build(BuildContext context) {
    return FadeTransition( //透明度动画组件
      opacity: _animation,  //执行动画
      child: Image.network(  //网络图片
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546851657199&di=fdd278c2029f7826790191d59279dbbe&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F0112cb554438090000019ae93094f1.jpg%401280w_1l_2o_100sh.jpg',
        scale: 2.0,  //进行缩放
        fit:BoxFit.cover  // 充满父容器
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('首页')),
      body:Center(
        child: Text('我是首页')
      )
    );
  }
}