import 'package:flutter/material.dart';
import 'Screen/SignUp.dart';
import 'Screen/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.amberAccent,
        primaryColorDark: Colors.amber,
      ),
      home: SignUp(),
    );
  }
}
