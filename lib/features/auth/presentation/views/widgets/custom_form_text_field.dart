import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController? controller;
  const CustomFormTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xffA0A0A0),
          fontSize: 14,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical:19, horizontal: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xffE0E0E0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xff007BFF), width: 1.5),
        ),
      ),
    );
  }
}
