import 'package:doc_doc_app/features/home/data/models/recomendation_item_model.dart';
import 'package:flutter/material.dart';
class RecomendationItem extends StatelessWidget {
  const RecomendationItem({super.key, required this.recomendationItemModel});
  final RecomendationItemModel recomendationItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(recomendationItemModel.image),
          SizedBox(width: 16),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recomendationItemModel.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 8),
                Text(
                  recomendationItemModel.specialist,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xff737373),
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Icon(Icons.star, color: Color(0xffF8D000)),
                    SizedBox(width: 4),
                    Text(
                      recomendationItemModel.rating,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xff737373),
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      recomendationItemModel.reviews,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xff737373),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
