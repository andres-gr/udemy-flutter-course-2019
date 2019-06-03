import 'package:flutter/material.dart';

import 'package:udemy_tutorial/screens/product.dart';
import 'package:udemy_tutorial/utils/key_generator.dart';

class Products extends StatelessWidget {
  Products({
    Key key,
    @required this.products,
    @required this.handleDeleteProduct,
  }) : super(key: key) {
    print('Products construct');
  }

  final List<Map<String, String>> products;

  final Function handleDeleteProduct;

  Card _buildCard({
    BuildContext context,
    Map<String, String> product,
    int index,
  }) =>
      Card(
        child: Column(
          key: generateKey(),
          children: <Widget>[
            Image.asset(product['uri']),
            Text(product['title']),
            ButtonBar(
              key: generateKey(),
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  key: generateKey(),
                  child: const Text('Details'),
                  onPressed: () {
                    Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ProductScreen(
                              imageUri: product['uri'],
                              title: product['title'],
                            ),
                      ),
                    ).then((bool value) {
                      if (value) {
                        handleDeleteProduct(index);
                      }
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      );

  Widget _buildProductItem(
    BuildContext context,
    int index,
  ) =>
      _buildCard(
        context: context,
        product: products[index],
        index: index,
      );

  Widget _buildList() {
    if (products.length == 0) {
      return Center(
        key: generateKey(),
        child: const Text('No products found'),
      );
    }
    return ListView.builder(
      key: generateKey(),
      itemCount: products.length,
      itemBuilder: _buildProductItem,
    );
  }

  @override
  Widget build(BuildContext context) {
    print('Products build');
    return Expanded(
      key: generateKey(),
      child: _buildList(),
    );
  }
}
