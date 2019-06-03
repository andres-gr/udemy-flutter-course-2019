import 'package:flutter/material.dart';

import 'package:udemy_tutorial/utils/key_generator.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({
    Key key,
    @required this.imageUri,
    @required this.title,
  }) : super(key: key);

  final String title;

  final String imageUri;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      key: generateKey(),
      onWillPop: () async {
        Navigator.pop<bool>(context, false);
        return false;
      },
      child: Scaffold(
        key: generateKey(),
        appBar: AppBar(
          key: generateKey(),
          title: Text(title),
        ),
        body: Column(
          key: generateKey(),
          children: <Widget>[
            Image.asset(imageUri),
            Container(
              key: generateKey(),
              margin: EdgeInsets.all(8.0),
              child: Text(title),
            ),
            Container(
              key: generateKey(),
              margin: EdgeInsets.all(8.0),
              child: RaisedButton(
                key: generateKey(),
                color: Theme.of(context).accentColor,
                textColor: Colors.white,
                child: const Text('Delete'),
                onPressed: () {
                  Navigator.pop<bool>(
                    context,
                    true,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
