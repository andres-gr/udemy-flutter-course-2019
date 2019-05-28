import 'package:flutter/material.dart';
import 'package:udemy_tutorial/utils/key_generator.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: generateKey(),
      appBar: AppBar(
        key: generateKey(),
        title: const Text('Product Details'),
      ),
      body: Center(
        key: generateKey(),
        child: Column(
          key: generateKey(),
          children: <Widget>[
            const Text('Product Screen'),
            RaisedButton(
              key: generateKey(),
              child: const Text('BACK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
