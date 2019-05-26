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
      key: Key('MAPP'),
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: Scaffold(
        key: Key('MAPP_SCAFFOLD'),
        appBar: AppBar(
          key: Key('MAPP_APPBAR'),
          title: Text('EasyList'),
        ),
        body: Center(
          key: Key('MAPP_BODY_CENTER'),
          child: Column(
            key: Key('MAPP_BODY_COLUMN'),
            children: <Widget>[
              ProductManager(
                key: Key('PRODUCT_MANAGER'),
                initialProduct: 'Food Tester',
              )
            ],
          ),
        ),
      ),
    );
  }
}
