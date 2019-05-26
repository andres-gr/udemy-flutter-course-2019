import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> _products = [];

  Card buildCard(String product) => Card(
        child: Column(
          children: <Widget>[
            Image.asset('assets/food.jpg'),
            Text(product),
          ],
        ),
      );

  void _handlePress() {
    setState(() {
      _products.add('New Product');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: _handlePress,
                child: Text('Add Product'),
              ),
            ),
            ..._products.map((String product) => buildCard(product)),
          ],
        ),
      ),
    );
  }
}
