import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  const ProductControl({
    Key key,
    @required this.handlePress,
  }) : super(key: key);

  final Function handlePress;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      key: const Key('PRODUCT_MANAGER_BUTTON'),
      onPressed: () => handlePress('Sweets'),
      child: const Text('Add Product'),
    );
  }
}
