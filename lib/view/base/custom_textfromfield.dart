import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  CustomTextFromField({
    super.key,
    this.controller,
    this.hintText,
    this.lebelText,
    this.obscureText=false,
    this.validator
});

  final TextEditingController? controller;
  final String? hintText;
  final String? lebelText;
  bool obscureText;
  String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: lebelText,
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }

}