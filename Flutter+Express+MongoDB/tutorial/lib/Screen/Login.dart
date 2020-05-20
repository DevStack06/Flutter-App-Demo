import 'package:flutter/material.dart';
import '../UI/InputFIeld.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            inputField(
              "Email",
              "balram",
              email,
            ),
            inputField(
              "password",
              "password",
              password,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 200,
              color: Colors.amberAccent,
              child: InkWell(
                onTap: () => {
                  print(email.text),
                  print(password.text),
                },
                child: Center(child: Text("tap it")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
