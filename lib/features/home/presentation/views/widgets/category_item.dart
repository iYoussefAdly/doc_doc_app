import 'package:doc_doc_app/features/home/data/models/category_item_model.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryItemModel});
  final CategoryItemModel categoryItemModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xffEDF1F8),
            shape: BoxShape.circle,
          ),
          child: Image.asset(categoryItemModel.image),
        ),
        SizedBox(
          height: 12,
        ),
        Text(categoryItemModel.title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
      ],
    );
  }
}
