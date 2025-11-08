import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          color: Color(0xff747474),
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1.5,
        ),
        children: [
          TextSpan(
            text:
                "Manage and schedule all of your medical appointments easily ",
          ),
          TextSpan(
            text: "with Docdoc ",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          TextSpan(text: "to get a new experience."),
        ],
      ),
    );
  }
}
