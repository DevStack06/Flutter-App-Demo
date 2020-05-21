import 'package:flutter/material.dart';
import '../UI/InputField.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          inputField("Username"),
          SizedBox(
            height: 20,
          ),
          inputField("Email"),
          SizedBox(
            height: 20,
          ),
          inputField("Passowrd"),
          SizedBox(
            height: 20,
          ),
          inputField("Confirm Passowrd"),
          Divider(
            height: 30,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 150,
            decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                "Sign UP",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Sign IN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
