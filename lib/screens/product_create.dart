import 'package:flutter/material.dart';

import 'package:udemy_tutorial/utils/key_generator.dart';

class ProductCreate extends StatelessWidget {
  const ProductCreate({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      key: generateKey(),
      child: const Text('Create'),
    );
  }
}
