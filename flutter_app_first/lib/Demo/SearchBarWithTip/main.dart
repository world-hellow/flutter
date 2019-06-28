import 'package:flutter/material.dart';
import 'search_data.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '选项卡切换保持原来状态',
      home:SearchBarDemo(),
    );
  }
}
class SearchBarDemo extends StatefulWidget {
  @override
  _SearchBarDemoState createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SearchBarDemo'),
        // actions 显示在最末尾
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.search),
            //点击搜索图标后，变成搜索条
            onPressed: (){
              //print('老铁666');//输出在调试控制台 
              showSearch(context:context,delegate: searchBarDelegate());//searchBarDelegate 也可以单独拆成文件
            },
          ),
          
        ],
      ),
    );
  }
}

class searchBarDelegate extends SearchDelegate<String>{
  //buildActions方法是点击导航条搜索按钮执行方法，
  //这方法在搜索栏右侧放入了一个clear图标，当点击图片时，清空搜索的内容。
  @override
  List<Widget> buildActions(BuildContext context){
    return [
      IconButton(
        icon:Icon(Icons.clear),
        onPressed: ()=>query = "", //query搜索框中输入的内容
      )

      ];
  }
  //搜索栏左侧的图标和功能的编写
  //这方法在搜索栏左侧放入了一个xxx图标，当点击图标时关闭整个搜索页面
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      // icon:Icon(Icons.pages),
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow, progress: transitionAnimation
      ),
      onPressed: () => close(context, null));
  }
  //buildResults方法，是搜到到内容后的展现
  @override
  Widget buildResults(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }
  //这个方法主要的作用就是设置推荐
  //就是我们输入一个字，然后自动为我们推送相关的搜索结果
  //这样的体验是非常好的
  @override
  Widget buildSuggestions(BuildContext context) { 
    //搜索提示列表
    final suggestionList = query.isEmpty?recentSuggest:searchList.where((input) => input.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
        title: RichText(
          text:TextSpan(
            text: suggestionList[index].substring(0, query.length),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),//加粗匹配的文字
            children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey),//未能匹配的文字正常显示
              )
            ]
          )
        ),
      )
    );
  }
}


