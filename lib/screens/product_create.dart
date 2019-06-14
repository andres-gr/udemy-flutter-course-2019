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
      child: RaisedButton(
        key: generateKey(),
        child: const Text('Save'),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) => Center(
              key: generateKey(),
              child: const Text('Modal'),
            ),
          );
        },
      ),
    );
  }
}
