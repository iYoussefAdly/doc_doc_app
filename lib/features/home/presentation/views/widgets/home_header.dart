import 'package:doc_doc_app/core/assets_data.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Hi, Omar!",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "How Are you Today?",
        style: TextStyle(
          color: Color(0xff5E5E5E),
          fontWeight: FontWeight.w400,
          fontSize: 11,
        ),
      ),
      trailing: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xffEDEDED),
          shape: BoxShape.circle,
        ),
        child: Stack(
          children: [
            Image.asset(AssetsData.notification),
            Positioned(
              left: 15,
              child: Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                   color: Color(0xffFA4B5C),
                  shape: BoxShape.circle
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}