import 'package:flutter/material.dart';

import 'package:udemy_tutorial/screens/products.dart';
import 'package:udemy_tutorial/utils/key_generator.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: generateKey(),
      appBar: AppBar(
        key: generateKey(),
        title: const Text('Login'),
      ),
      body: Center(
        key: generateKey(),
        child: RaisedButton(
          key: generateKey(),
          child: const Text('Login'),
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => ProductsScreen(
                    key: generateKey(),
                  ),
                ));
          },
        ),
      ),
    );
  }
}
