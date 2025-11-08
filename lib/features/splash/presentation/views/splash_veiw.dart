import 'package:doc_doc_app/core/assets_data.dart';
import 'package:doc_doc_app/features/splash/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';

class SplashVeiw extends StatefulWidget {
  static String id = "SplashView";
  const SplashVeiw({super.key});
  @override
  State<SplashVeiw> createState() => _SplashVeiwState();
}
class _SplashVeiwState extends State<SplashVeiw> {
@override
void initState() {
  super.initState();
  Future.delayed(const Duration(seconds: 5), () {
    Navigator.pushReplacementNamed(context, OnBoardingView.id);
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AssetsData.splashImage),
              SizedBox(width: 15),
              Image.asset(AssetsData.docDocImage),
            ],
          ),
        ],
      ),
    );
  }
}
