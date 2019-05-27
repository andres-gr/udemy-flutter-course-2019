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

  final String initialProduct;

  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  final List<String> _products = [];

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

  void _handlePress(String product) {
    setState(() {
      _products.add(product);
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
            handlePress: _handlePress,
          ),
        ),
        Products(
          key: const Key('Products'),
          products: _products,
        ),
      ],
    );
  }
}
