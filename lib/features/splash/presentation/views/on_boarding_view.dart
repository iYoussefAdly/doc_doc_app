import 'package:doc_doc_app/core/assets_data.dart';
import 'package:doc_doc_app/features/auth/presentation/views/login_view.dart';
import 'package:doc_doc_app/features/splash/presentation/views/widgets/custom_button.dart';
import 'package:doc_doc_app/features/splash/presentation/views/widgets/custom_doctor_image.dart';
import 'package:doc_doc_app/features/splash/presentation/views/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static String id = "OnBoardingView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31),
        child: Column(
          children: [
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 38,
                  width: 38,
                  child: Image.asset(AssetsData.splashIconImage),
                ),
                SizedBox(width: 15),
                Container(
                  height: 18,
                  width: 95,
                  child: Image.asset(AssetsData.docDocImage),
                ),
                SizedBox(height: 41),
              ],
            ),
            CustomDoctorImage(),
            SizedBox(height: 40),
            CustomRichText(),
            SizedBox(height: 32),
            CustomButton(
              text: 'Get Started',
              onTap: () {
                Navigator.pushNamed(context, LoginView.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
