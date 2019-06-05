import 'package:flutter/material.dart';

import 'package:udemy_tutorial/products_drawer.dart';
import 'package:udemy_tutorial/screens/products.dart';
import 'package:udemy_tutorial/utils/key_generator.dart';

class ProductsAdminScreen extends StatelessWidget {
  const ProductsAdminScreen({
    Key key,
  }) : super(key: key);

  List<ListTile> _items(BuildContext context) => [
        ListTile(
          key: generateKey(),
          title: const Text('All Products'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext conxtex) => ProductsScreen(
                      key: generateKey(),
                    ),
              ),
            );
          },
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: generateKey(),
      appBar: AppBar(
        key: generateKey(),
        title: const Text('Manage Products'),
      ),
      drawer: ProductsDrawer(
        key: generateKey(),
        items: _items(context),
      ),
      body: Center(
        key: generateKey(),
        child: const Text('Manage'),
      ),
    );
  }
}
