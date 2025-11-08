import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onTap});
  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff2378F7),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
