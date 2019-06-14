import 'package:flutter/material.dart';

import 'package:udemy_tutorial/routes/router.dart';
import 'package:udemy_tutorial/screens/product.dart';
import 'package:udemy_tutorial/screens/products.dart';
import 'package:udemy_tutorial/utils/key_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, String>> _products = [];

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
    final Map<String, dynamic> productsProps = {
      'handleAddProduct': _handleAddProduct,
      'handleDeleteProduct': _handleDeleteProduct,
      'products': _products,
    };

    return MaterialApp(
      key: generateKey(),
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      routes: routes(
        context,
        {
          'products': productsProps,
        },
      ),
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '' || pathElements[1] != 'product') {
          return null;
        }
        final int index = int.parse(pathElements[2]);
        return MaterialPageRoute<bool>(
          builder: (BuildContext context) => ProductScreen(
                imageUri: _products[index]['uri'],
                title: _products[index]['title'],
              ),
        );
      },
      onUnknownRoute: (RouteSettings settings) => MaterialPageRoute(
        builder: (BuildContext context) => ProductsScreen(
            key: generateKey(),
            handleAddProduct: _handleAddProduct,
            handleDeleteProduct: _handleDeleteProduct,
            products: _products,
          ),
      ),
    );
  }
}
