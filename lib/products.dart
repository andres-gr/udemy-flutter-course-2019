import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  Products({
    Key key,
    @required this.products,
  }) : super(key: key) {
    print('Products construct');
  }

  final List<String> products;

  Card buildCard(String product) => Card(
        child: Column(
          key: Key('BUILDCARD_COLUMN'),
          children: <Widget>[
            Image.asset('assets/food.jpg'),
            Text(product),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    print('Products build');
    return Column(
      key: Key('PRODUCTS_BUILD_COLUMN'),
      children: products.map((String product) => buildCard(product)).toList(),
    );
  }
}
