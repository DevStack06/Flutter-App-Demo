import 'package:flutter/material.dart';

Widget inputField(String hintText) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.amberAccent,
          width: 4,
        )),
    padding: EdgeInsets.symmetric(horizontal: 15),
    child: TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
      ),
    ),
  );
}
