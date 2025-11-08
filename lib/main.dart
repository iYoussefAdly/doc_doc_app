import 'package:doc_doc_app/features/auth/presentation/views/login_view.dart';
import 'package:doc_doc_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:doc_doc_app/features/home/presentation/views/home_view.dart';
import 'package:doc_doc_app/features/splash/presentation/views/on_boarding_view.dart';
import 'package:doc_doc_app/features/splash/presentation/views/splash_veiw.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Docdoc());
}

class Docdoc extends StatelessWidget {
  const Docdoc({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashVeiw.id,
      routes: {
        SplashVeiw.id: (context) => SplashVeiw(),
        OnBoardingView.id:(context)=>OnBoardingView(),
        LoginView.id:(context)=>LoginView(),
        SignUpView.id:(context)=>SignUpView(),
        HomeView.id:(context)=>HomeView()
      },
    );
  }
}