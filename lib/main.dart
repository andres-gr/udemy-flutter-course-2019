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
      key: const Key('MApp'),
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: Scaffold(
        key: const Key('MAppScaffold'),
        appBar: AppBar(
          key: const Key('MAppAppBar'),
          title: const Text('EasyList'),
        ),
        body: Center(
          key: const Key('MAppBodyCenter'),
          child: ProductManager(
            key: const Key('ProductManager'),
            initialProduct: 'Food Tester',
          ),
        ),
      ),
    );
  }
}
