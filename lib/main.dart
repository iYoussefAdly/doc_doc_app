import 'package:doc_doc_app/features/auth/presentation/views/login_view.dart';
import 'package:doc_doc_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:doc_doc_app/features/home/presentation/views/home_view.dart';
import 'package:doc_doc_app/features/splash/presentation/views/on_boarding_view.dart';
import 'package:doc_doc_app/features/splash/presentation/views/splash_veiw.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final isLoggedIn = prefs.getBool("isLoggedIn") ?? false;
  runApp(Docdoc(isLoggedIn:isLoggedIn,));
}

class Docdoc extends StatelessWidget {
  final bool isLoggedIn;
  const Docdoc({super.key, required this.isLoggedIn});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:isLoggedIn?HomeView.id:SplashVeiw.id,
      routes: {
        SplashVeiw.id: (context) => SplashVeiw(),
        OnBoardingView.id: (context) => OnBoardingView(),
        LoginView.id: (context) => LoginView(),
        SignUpView.id: (context) => SignUpView(),
        HomeView.id: (context) => HomeView(),
      },
    );
  }
}
