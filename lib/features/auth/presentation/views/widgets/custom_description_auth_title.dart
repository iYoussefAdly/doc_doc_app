import 'package:flutter/material.dart';

class CustomDescriptionAuthTitle extends StatelessWidget {
  final String text;
  const CustomDescriptionAuthTitle({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xff747474),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
