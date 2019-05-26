import 'package:flutter/material.dart';

import 'package:udemy_tutorial/product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: const Key('MAPP'),
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: Scaffold(
        key: const Key('MAPP_SCAFFOLD'),
        appBar: AppBar(
          key: const Key('MAPP_APPBAR'),
          title: const Text('EasyList'),
        ),
        body: Center(
          key: const Key('MAPP_BODY_CENTER'),
          child: Column(
            key: const Key('MAPP_BODY_COLUMN'),
            children: <Widget>[
              ProductManager(
                key: const Key('PRODUCT_MANAGER'),
                initialProduct: 'Food Tester',
              )
            ],
          ),
        ),
      ),
    );
  }
}
