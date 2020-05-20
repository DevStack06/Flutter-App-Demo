import 'package:flutter/material.dart';
import '../UI/InputFIeld.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InputField(
              labetext: "Email",
              hintext: "balram",
            ),
            InputField(
              labetext: "password",
              hintext: "password",
            ),
          ],
        ),
      ),
    );
  }
}
