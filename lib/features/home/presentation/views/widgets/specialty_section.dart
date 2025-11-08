import 'package:doc_doc_app/features/home/presentation/views/widgets/category_item_view.dart';
import 'package:doc_doc_app/features/home/presentation/views/widgets/header_section.dart';
import 'package:flutter/material.dart';

class SpecialtySection extends StatelessWidget {
  const SpecialtySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderSection(text: 'Doctor Speciality',),
        SizedBox(height: 16),
        CategoryItemView()
      ],
    );
  }
}
