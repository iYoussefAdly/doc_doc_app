import 'package:doc_doc_app/core/assets_data.dart';
import 'package:flutter/material.dart';

class CustomPlatformImages extends StatelessWidget {
  const CustomPlatformImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsData.googleLogo),
        SizedBox(width: 30,),
        Image.asset(AssetsData.facebookLogo),
        SizedBox(width: 30,),
        Image.asset(AssetsData.appleLogo),
      ],
    );
  }
}