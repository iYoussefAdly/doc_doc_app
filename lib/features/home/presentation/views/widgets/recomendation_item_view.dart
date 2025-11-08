import 'package:doc_doc_app/core/assets_data.dart';
import 'package:doc_doc_app/features/home/data/models/recomendation_item_model.dart';
import 'package:doc_doc_app/features/home/presentation/views/widgets/recomendation_item.dart';
import 'package:flutter/material.dart';

class RecomendationItemView extends StatelessWidget {
  const RecomendationItemView({super.key});
  static final items = [
    RecomendationItemModel(
      "(4,279 reviews)",
      image: AssetsData.firstDoctor,
      name: "Dr. Randy Wigham",
      specialist: "General | RSUD Gatot Subroto",
      rating: "4.8",
    ),
    RecomendationItemModel(
      "(4,00 reviews)",
      image: AssetsData.doctor2,
      name: "Dr. Jack Sulivan",
      specialist: "General | RSUD Gatot Subroto",
      rating: "4.5",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: RecomendationItem(recomendationItemModel: items[index]),
        );
      },
    );
  }
}
