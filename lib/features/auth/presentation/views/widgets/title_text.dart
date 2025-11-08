import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xff1F7EF7),
        fontSize: 27,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
