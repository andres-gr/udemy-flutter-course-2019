import 'package:flutter/material.dart';
import 'package:udemy_tutorial/screens/products.dart';

import 'package:udemy_tutorial/screens/products_admin.dart';
import 'package:udemy_tutorial/utils/key_generator.dart';

Map<String, WidgetBuilder> routes(
  BuildContext context,
  Map<String, Map<String, dynamic>> props,
) =>
    {
      '/': (BuildContext conxtext) => ProductsScreen(
            key: generateKey(),
            handleAddProduct: props['products']['handleAddProduct'],
            handleDeleteProduct: props['products']['handleDeleteProduct'],
            products: props['products']['products'],
          ),
      '/admin': (BuildContext context) => ProductsAdminScreen(
            key: generateKey(),
          ),
    };
