import 'package:doc_doc_app/core/assets_data.dart';
import 'package:doc_doc_app/features/home/data/models/category_item_model.dart';
import 'package:doc_doc_app/features/home/presentation/views/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryItemView extends StatelessWidget {
  const CategoryItemView({super.key});
  static final List<CategoryItemModel> items = [
    CategoryItemModel(image: AssetsData.manDoctorEurope, title: "General"),
    CategoryItemModel(image: AssetsData.brain, title: "Neurologic"),
    CategoryItemModel(image: AssetsData.baby, title: "Pediatric"),
    CategoryItemModel(image: AssetsData.kidneys, title: "Radiology"),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items.asMap().entries.map((e) {
          int index = e.key;
          CategoryItemModel value = e.value;
          return index==0|| index == 1 || index == 2
              ? Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: CategoryItem(categoryItemModel: value),
                )
              : CategoryItem(categoryItemModel: value);
        }).toList(),
      ),
    );
  }
}
