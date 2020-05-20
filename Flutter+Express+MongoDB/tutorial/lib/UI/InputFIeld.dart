import "package:flutter/material.dart";

class InputField extends StatelessWidget {
  String labetext, hintext;
  InputField({this.labetext, this.hintext});
  @override
  Widget build(Object context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: this.labetext,
        hintText: this.hintext,
      ),
    );
  }
}
