import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TypewriterAnimatedTextKit(
                onTap: () {
                  print("Tap Event");
                },
                text: ["Get Onbord here!"],
                totalRepeatCount: 500,
                speed: Duration(milliseconds: 500),
                textStyle: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "Agne",
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent),
                textAlign: TextAlign.start,
                alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                ),
            SizedBox(
              height: 20,
            ),
            inputField("Username"),
            inputField("Email"),
            inputField("Password"),
            inputField("Confirm Password"),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 150,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
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
                Text("Already have an account?",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 10),
                Text("Sign In",
                    style: TextStyle(
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget inputField(String hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
      child: Container(
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.amberAccent,
              width: 4,
            )),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
          ),
        ),
      ),
    );
  }

  Widget inputField2(String hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
      child: Container(
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.amberAccent,
                width: 4,
              )),
          child: Text("hello world")),
    );
  }

  Widget inputField3(String hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
      child: Container(
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.amberAccent,
                width: 4,
              )),
          child: Text("hello world 2")),
    );
  }
}
