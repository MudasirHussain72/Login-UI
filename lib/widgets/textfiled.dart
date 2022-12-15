// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String hintText;
  var color;
  var icon;
  MyTextField({
    super.key,
    required this.hintText,
    required this.color,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        cursorColor: color,
        style: const TextStyle(fontSize: 14),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(14.0),
          ),
          filled: true,
          hintStyle: const TextStyle(color: Color(0xff585A60)),
          hintText: hintText,
          fillColor: const Color(0xff262A34),
          focusColor: const Color(0xff262A34),
          suffixIcon: icon,
        ),
      ),
    );
  }
}
