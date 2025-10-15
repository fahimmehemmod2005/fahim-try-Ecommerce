import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  CustomTextFromField({
    super.key,
    this.controller,
    this.hintText,
    this.lebelText,
    this.obscureText=false,
});

  final TextEditingController? controller;
  final String? hintText;
  final String? lebelText;
  bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: lebelText,
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey)
        ),
      ),
    );
  }

}