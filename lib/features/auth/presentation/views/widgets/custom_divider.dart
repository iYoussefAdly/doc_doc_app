import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(color: Color(0xff999999), thickness: 1, endIndent: 10),
        ),
        const Text(
          "Or sign in with",
          style: TextStyle(color: Color(0xff999999), fontSize: 12),
        ),
        const Expanded(
          child: Divider(color: Color(0xff999999), thickness: 1, indent: 10),
        ),
      ],
    );
  }
}
