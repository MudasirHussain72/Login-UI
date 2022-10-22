import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  String hintText;
  // ignore: prefer_typing_uninitialized_variables
  // var controller;
  var color;
  MyTextField({
    super.key,
    // required this.controller,
    required this.hintText,
    required this.color,
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
          hintStyle: TextStyle(color: Color(0xff585A60)),
          hintText: hintText,
          fillColor: Color(0xff262A34),
          focusColor: Color(0xff262A34),
        ),
      ),
    );
  }
}
