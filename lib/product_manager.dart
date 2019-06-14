import 'package:flutter/material.dart';

import 'package:udemy_tutorial/product_control.dart';
import 'package:udemy_tutorial/products.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, String>> products;

  final Function handleAddProduct;

  final Function handleDeleteProduct;

  const ProductManager({
    Key key,
    @required this.handleAddProduct,
    @required this.handleDeleteProduct,
    @required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('ProductManager build');
    return Column(
      key: const Key('ProductManagerColumn'),
      children: <Widget>[
        Container(
          key: const Key('ProductManagerColumnContainer'),
          margin: EdgeInsets.all(8.0),
          child: ProductControl(
            key: const Key('ProductControl'),
            handleAddProduct: handleAddProduct,
          ),
        ),
        Products(
          key: const Key('Products'),
          products: products,
          handleDeleteProduct: handleDeleteProduct,
        ),
      ],
    );
  }
}
