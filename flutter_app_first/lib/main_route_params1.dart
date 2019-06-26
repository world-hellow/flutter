import 'dart:io';

import 'package:flutter/material.dart';

//Dart中可以使用类来抽象一个数据，
//比如我们模仿一个商品信息，有商品标题和商品描述。
//我们定义了一个Product类，里边有两个字符型变量，title和description。
class Product {
  final String title; //商品名称
  final String description; //商品描述
  Product(this.title, this.description);
}

void main() {
  runApp(MaterialApp(
      title: '正常的数据传递',
      home: ProductList(
          //自定义组件ProductList传入products参数
          products:
              List.generate(20, (i) => Product('商品$i', '商品描述--商品编号:${i+1}')))));
}

class ProductList extends StatelessWidget {
  // 接受参数
  final List<Product> products;
  ProductList({Key key, @required this.products}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('常规传参'),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(products[index].title),
                subtitle: Text(products[index].description),
                leading: Icon(Icons.supervisor_account), //图标
              );
            },
          ),
        ));
  }
}
