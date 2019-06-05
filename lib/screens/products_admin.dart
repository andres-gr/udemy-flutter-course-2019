import 'package:flutter/material.dart';

import 'package:udemy_tutorial/products_drawer.dart';
import 'package:udemy_tutorial/screens/product_create.dart';
import 'package:udemy_tutorial/screens/product_list.dart';
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
    return DefaultTabController(
      key: generateKey(),
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        key: generateKey(),
        appBar: AppBar(
          key: generateKey(),
          title: const Text('Manage Products'),
          bottom: TabBar(
            key: generateKey(),
            tabs: <Widget>[
              Tab(
                key: generateKey(),
                icon: Icon(
                  Icons.create,
                  key: generateKey(),
                ),
                text: 'Create Product',
              ),
              Tab(
                key: generateKey(),
                icon: Icon(
                  Icons.list,
                  key: generateKey(),
                ),
                text: 'My List',
              ),
            ],
          ),
        ),
        drawer: ProductsDrawer(
          key: generateKey(),
          items: _items(context),
        ),
        body: TabBarView(
          key: generateKey(),
          children: <Widget>[
            ProductCreate(
              key: generateKey(),
            ),
            ProductList(
              key: generateKey(),
            ),
          ],
        ),
      ),
    );
  }
}
