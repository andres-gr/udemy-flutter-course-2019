import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  const ProductControl({
    Key key,
    @required this.handleAddProduct,
  }) : super(key: key);

  final Function handleAddProduct;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      key: const Key('ProductManagerRaisedButton'),
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      child: const Text('Add Product'),
      onPressed: () => handleAddProduct({
            'title': 'Chocolate',
            'uri': 'assets/food.jpg',
          }),
    );
  }
}
