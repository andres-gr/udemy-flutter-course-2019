import 'package:flutter/material.dart';

import 'package:udemy_tutorial/product_manager.dart';
import 'package:udemy_tutorial/products_drawer.dart';
import 'package:udemy_tutorial/screens/products_admin.dart';
import 'package:udemy_tutorial/utils/key_generator.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({
    Key key,
  }) : super(key: key);

  List<ListTile> _items(BuildContext context) => [
        ListTile(
          key: generateKey(),
          title: const Text('Manage Products'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext conxtex) => ProductsAdminScreen(
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
      drawer: ProductsDrawer(
        key: generateKey(),
        items: _items(context),
      ),
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
