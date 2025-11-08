import 'package:doc_doc_app/core/assets_data.dart';
import 'package:flutter/material.dart';

class CustomDoctorImage extends StatelessWidget {
  const CustomDoctorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 491,
          width: 375,
          child: Image.asset(AssetsData.dotcorImage)),
          Positioned(
            left: 53,
            top: 445,
            child: Image.asset(AssetsData.bestDoctorText))
      ],
    );
  }
}