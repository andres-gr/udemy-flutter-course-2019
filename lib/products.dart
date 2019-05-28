import 'package:flutter/material.dart';

import 'package:udemy_tutorial/screens/product.dart';
import 'package:udemy_tutorial/utils/key_generator.dart';

class Products extends StatelessWidget {
  Products({
    Key key,
    @required this.products,
  }) : super(key: key) {
    print('Products construct');
  }

  final List<String> products;

  Card _buildCard({
    BuildContext context,
    String product,
  }) =>
      Card(
        child: Column(
          key: generateKey(),
          children: <Widget>[
            Image.asset('assets/food.jpg'),
            Text(product),
            ButtonBar(
              key: generateKey(),
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  key: generateKey(),
                  child: const Text('Details'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ProductScreen(),
                      ),
                    );
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
