import 'package:flutter/material.dart';

import 'package:udemy_tutorial/utils/key_generator.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      key: generateKey(),
      child: const Text('List'),
    );
  }
}
