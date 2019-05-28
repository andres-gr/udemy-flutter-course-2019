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
      body: Column(
        key: generateKey(),
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Container(
            key: generateKey(),
            margin: EdgeInsets.all(8.0),
            child: const Text('Product Screen'),
          ),
          Container(
            key: generateKey(),
            margin: EdgeInsets.all(8.0),
            child: RaisedButton(
              key: generateKey(),
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              child: const Text('BACK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
