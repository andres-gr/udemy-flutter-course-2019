import 'package:flutter/material.dart';

import 'package:udemy_tutorial/product_manager.dart';
import 'package:udemy_tutorial/products_drawer.dart';
import 'package:udemy_tutorial/utils/key_generator.dart';

class ProductsScreen extends StatelessWidget {
  final List<Map<String, String>> products;

  final Function handleAddProduct;

  final Function handleDeleteProduct;

  const ProductsScreen({
    Key key,
    @required this.handleAddProduct,
    @required this.handleDeleteProduct,
    @required this.products,
  }) : super(key: key);

  List<ListTile> _items(BuildContext context) => [
        ListTile(
          key: generateKey(),
          title: const Text('Manage Products'),
          onTap: () {
            Navigator.pushReplacementNamed(
              context,
              '/admin',
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
          handleAddProduct: handleAddProduct,
          handleDeleteProduct: handleDeleteProduct,
          products: products,
        ),
      ),
    );
  }
}
