import 'package:doc_doc_app/features/home/presentation/views/widgets/header_section.dart';
import 'package:doc_doc_app/features/home/presentation/views/widgets/recomendation_item_view.dart';
import 'package:flutter/material.dart';
class RecomendationDoctorSection extends StatelessWidget {
  const RecomendationDoctorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderSection(text: "Recommendation Doctor"),
        RecomendationItemView()
      ],
    );
  }
}