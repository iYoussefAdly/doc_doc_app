import 'package:doc_doc_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:doc_doc_app/features/home/presentation/views/widgets/my_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = "HomeView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),
      bottomNavigationBar: MyBottomNavigationBarr(),
      );
  }
}
