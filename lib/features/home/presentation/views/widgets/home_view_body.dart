import 'package:doc_doc_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:doc_doc_app/features/home/presentation/views/widgets/home_header.dart';
import 'package:doc_doc_app/features/home/presentation/views/widgets/recomendation_doctor_section.dart';
import 'package:doc_doc_app/features/home/presentation/views/widgets/specialty_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            HomeHeader(),
            SizedBox(
              height: 50,
            ),
            BookItem(),
            SizedBox(
              height: 24,
            ),
            SpecialtySection(),
            SizedBox(
              height: 30,
            ),
            RecomendationDoctorSection()
          ],
        ),
      ),
    );
  }
}
