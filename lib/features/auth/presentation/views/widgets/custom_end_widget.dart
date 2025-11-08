import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class CustomEndWidget extends StatelessWidget {
  const CustomEndWidget({super.key, required this.text1, required this.text2, required this.onTap});
  final String text1;
  final String text2;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "By logging, you agree to our",
                  style: TextStyle(color: Color(0xff999999), fontSize: 11),
                ),
                TextSpan(
                  text: "Terms & Conditions",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "and",
                  style: TextStyle(color: Color(0xff999999), fontSize: 11),
                ),
              ],
            ),
          ),
          Text(
            "PrivacyPolicy",
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 24),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: text1,
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap =onTap,
                  text: text2,
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
