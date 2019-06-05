import 'package:flutter/material.dart';

import 'package:udemy_tutorial/screens/auth.dart';
import 'package:udemy_tutorial/utils/key_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: generateKey(),
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: AuthScreen(),
    );
  }
}
