import 'package:doc_doc_app/features/home/presentation/views/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 24),
          HomeHeader(),
        ],
      ),
    );
  }
}
