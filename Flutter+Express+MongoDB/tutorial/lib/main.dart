import 'package:flutter/material.dart';
import './Screen/Login.dart';

void main(_) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
