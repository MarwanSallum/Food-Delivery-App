import 'package:flutter/material.dart';
// DATA
import 'package:food_delivery_app/src/data/category_data.dart';
import 'package:food_delivery_app/src/model/category_model.dart';
import 'package:food_delivery_app/src/widgets/food_card.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> _categpries = categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      // لا بد من إعطاء ListView إرتفاع معين height لتجنب فشل التطبيق
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categpries.length,
        itemBuilder: (BuildContext context, int index){
          return FoodCard(
            categoryName: _categpries[index].categoryName,
            imagePath: _categpries[index].imagePath,
            numberOfItem: _categpries[index].numberOfItems,
          );
        },
      ),
    );
  }
}
