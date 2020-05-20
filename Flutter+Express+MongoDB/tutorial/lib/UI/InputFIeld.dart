import 'package:flutter/material.dart';

Widget inputField(
    String labeltext, String hinttext, TextEditingController controller) {
  // String labeltext = labeltext;
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: labeltext,
      hintText: hinttext,
    ),
  );
}
