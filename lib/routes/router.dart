import 'package:flutter/material.dart';
import 'package:udemy_tutorial/screens/products.dart';

import 'package:udemy_tutorial/screens/products_admin.dart';
import 'package:udemy_tutorial/utils/key_generator.dart';

Map<String, WidgetBuilder> routes(BuildContext context) => {
      '/': (BuildContext conxtext) => ProductsScreen(
            key: generateKey(),
          ),
      '/admin': (BuildContext context) => ProductsAdminScreen(
            key: generateKey(),
          ),
    };
