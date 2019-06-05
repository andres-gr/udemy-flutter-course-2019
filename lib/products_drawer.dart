import 'package:flutter/material.dart';

import 'package:udemy_tutorial/utils/key_generator.dart';

class ProductsDrawer extends StatelessWidget {
  final List<ListTile> items;

  const ProductsDrawer({
    Key key,
    @required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: generateKey(),
      child: Column(
        key: generateKey(),
        children: <Widget>[
          AppBar(
            key: generateKey(),
            automaticallyImplyLeading: false,
            title: const Text('Choose'),
          ),
          ...items.toList()
        ],
      ),
    );
  }
}
