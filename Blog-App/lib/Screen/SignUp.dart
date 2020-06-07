import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:frontend/Screen/Login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  List<bool> _pass = [true, true];
  final userGlobalKey = GlobalKey<FormState>();
  final emailGlobalKey = GlobalKey<FormState>();
  final passGlobalKey = GlobalKey<FormState>();
  final confPassGlobalKey = GlobalKey<FormState>();
  final userText = TextEditingController();
  final emailText = TextEditingController();
  final passText = TextEditingController();
  final confPassText = TextEditingController();

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
            Row(
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
                        fontSize: 40.0,
                        fontFamily: "Agne",
                        fontWeight: FontWeight.bold,
                        color: Colors.amberAccent),
                    textAlign: TextAlign.start,
                    alignment:
                        AlignmentDirectional.topStart // or Alignment.topLeft
                    ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            borderContainer(
              userInputField("Username"),
              userGlobalKey,
            ),
            borderContainer(
              emailInputField("Email"),
              emailGlobalKey,
            ),
            borderContainer(
              passInputField("Password", 0),
              passGlobalKey,
            ),
            borderContainer(
              confPassInputField("Confirm Password", 1),
              confPassGlobalKey,
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                if (userGlobalKey.currentState.validate() &&
                    emailGlobalKey.currentState.validate() &&
                    passGlobalKey.currentState.validate() &&
                    confPassGlobalKey.currentState.validate()) {
                  // api call will happend
                  print("validate");
                }
              },
              child: Container(
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
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Login()));
                  },
                  child: Text("Sign In",
                      style: TextStyle(
                          color: Colors.amberAccent,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget borderContainer(Widget child, GlobalKey key) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30),
      child: Container(
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.amberAccent,
              width: 4,
            )),
        child: Form(key: key, child: child),
      ),
    );
  }

  Widget userInputField(String hintText) {
    return TextFormField(
      controller: userText,
      validator: (value) {
        if (value.isEmpty) return "Username can't be empty";
        return null;
      },
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontSize: 18,
        ),
        border: InputBorder.none,
        hintText: hintText,
      ),
    );
  }

  Widget emailInputField(String hintText) {
    return TextFormField(
      controller: emailText,
      validator: (value) {
        if (value.isEmpty)
          return "Email can't be empty";
        else if (!value.contains("@")) return "Email is invalid formate";
        return null;
      },
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontSize: 18,
        ),
        border: InputBorder.none,
        hintText: hintText,
      ),
    );
  }

  Widget passInputField(String hintText, int index) {
    return TextFormField(
      controller: passText,
      validator: (value) {
        if (value.isEmpty)
          return " password can't be empty";
        else if (value.length > 8) return "passworld lenght must be >=8";
        return null;
      },
      obscureText: _pass[index],
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontSize: 18,
        ),
        suffixIcon: IconButton(
            icon: _pass[index]
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            onPressed: () => {
                  setState(() {
                    _pass[index] = !_pass[index];
                  })
                }),
        border: InputBorder.none,
        hintText: hintText,
      ),
    );
  }

  Widget confPassInputField(String hintText, int index) {
    return TextFormField(
      controller: confPassText,
      validator: (value) {
        if (value.isEmpty)
          return " password can't be empty";
        else if (value.length > 8)
          return "passworld lenght must be >=8";
        else if (value != passText.text)
          return "Password and confirm password are not same";
        return null;
      },
      obscureText: _pass[index],
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontSize: 18,
        ),
        suffixIcon: IconButton(
            icon: _pass[index]
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            onPressed: () => {
                  setState(() {
                    _pass[index] = !_pass[index];
                  })
                }),
        border: InputBorder.none,
        hintText: hintText,
      ),
    );
  }
}
