import 'package:flutter/material.dart';
import 'package:udemy_tutorial/products.dart';

class ProductManager extends StatefulWidget {
  const ProductManager({Key key, @required this.initialProduct})
      : super(key: key);

  final String initialProduct;

  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add(widget.initialProduct);
  }

  void _handlePress() {
    setState(() {
      _products.add('New Product');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(8.0),
          child: RaisedButton(
            onPressed: _handlePress,
            child: Text('Add Product'),
          ),
        ),
        Products(
          products: _products,
        ),
      ],
    );
  }
}
