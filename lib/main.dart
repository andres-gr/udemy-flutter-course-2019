import 'package:flutter/material.dart';
import 'package:udemy_tutorial/productManager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              ProductManager(
                initialProduct: 'Food Tester',
              )
            ],
          ),
        ),
      ),
    );
  }
}
