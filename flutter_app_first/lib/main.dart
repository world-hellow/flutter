import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //卡片式布局默认是撑满整个外部容器的，如果你想设置卡片的宽高，需要在外部容器就进行制定。
    var card = Card(
      color: Colors.lightGreenAccent,
      child: Column(
        children: <Widget>[
          //ListTile不光可以使用在ListView组件中，然后容器组件其实都可以使用。
          ListTile(
            title: Text(
              '吉林省吉林市昌邑区',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('技术胖:1513938888'),
            leading: Icon(
              Icons.account_box,
              color: Colors.lightBlueAccent,
            ),
          ),
          new Divider(),//分割线
          ListTile(
            title: new Text(
              '北京市海淀区中国科技大学',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text('胜宏宇:1513938888'),
            leading: new Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
          new Divider(),
          ListTile(
            title: new Text(
              '河南省濮阳市百姓办公楼',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text('JSPang:1513938888'),
            leading: new Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
          new Divider(),
        ],
      ),
    );
    return MaterialApp(
      title: 'hello world',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card组件的使用'),
        ),
        body: card,
      ),
    );
  }
}
