import 'package:flutter/material.dart';

import 'package:udemy_tutorial/product_control.dart';
import 'package:udemy_tutorial/products.dart';

class ProductManager extends StatefulWidget {
  ProductManager({
    Key key,
    this.initialProduct,
  }) : super(key: key) {
    print('ProductManager construct');
  }

  final Map<String, String> initialProduct;

  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  final List<Map<String, String>> _products = [];

  @override
  void initState() {
    super.initState();
    print('ProductManager initState');
    if (widget.initialProduct != null) {
      _products.add(widget.initialProduct);
    }
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('ProductManager updated');
  }

  void _handleAddProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }
  
  void _handleDeleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

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
            handleAddProduct: _handleAddProduct,
          ),
        ),
        Products(
          key: const Key('Products'),
          products: _products,
          handleDeleteProduct: _handleDeleteProduct,
        ),
      ],
    );
  }
}
