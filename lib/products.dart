import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({
    Key key,
    @required this.products,
  }) : super(key: key);

  final List<String> products;

  Card buildCard(String product) => Card(
        child: Column(
          children: <Widget>[
            Image.asset('assets/food.jpg'),
            Text(product),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products.map((String product) => buildCard(product)).toList(),
    );
  }
}
