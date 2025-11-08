import 'package:flutter/material.dart';

class CustomRememberMe extends StatefulWidget {
  const CustomRememberMe({super.key});

  @override
  State<CustomRememberMe> createState() => _CustomRememberMeState();
}

class _CustomRememberMeState extends State<CustomRememberMe> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              color: isChecked ? const Color(0xff247CFF) : Colors.transparent,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: const Color(0xffBDBDBD),
                width: 2,
              ),
            ),
            child: isChecked
                ? const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 16,
                  )
                : null,
          ),
           SizedBox(width: 10),
           Text(
            "Remember me",
            style: TextStyle(
              color: Color(0xff747474),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Text("Forget password?",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff1F7FF9)),)
        ],
      ),
    );
  }
}
