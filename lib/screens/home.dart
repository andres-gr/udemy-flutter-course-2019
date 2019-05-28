import 'package:flutter/material.dart';

import 'package:udemy_tutorial/product_manager.dart';
import 'package:udemy_tutorial/utils/key_generator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: generateKey(),
      appBar: AppBar(
        key: generateKey(),
        title: const Text('EasyList'),
      ),
      body: Center(
        key: generateKey(),
        child: ProductManager(
          key: generateKey(),
        ),
      ),
    );
  }
}
