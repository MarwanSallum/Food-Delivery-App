import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/widgets/bought_foods.dart';
import 'package:food_delivery_app/src/widgets/food_category.dart';
import 'package:food_delivery_app/src/widgets/home_top_info.dart';
import 'package:food_delivery_app/src/widgets/search_field.dart';

// Data
import 'data/food_data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Food> _foods = foods;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: [
            HomeTopInfo(),
            FoodCategory(),
            SizedBox(height: 20.0,),
            SearchField(),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Frequently Bought Foods",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.orangeAccent
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Column(
            children: _foods.map(_buildFoodItems).toList(),
          ),

        ],
      ),
    );
  }

  Widget _buildFoodItems(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFoods(
        id: food.id,
        imagePath: food.imagePath,
        category: food.category,
        discount: food.discount,
        name: food.name,
        price: food.price,
        ratings: food.ratings,
      ),
    );
  }
}
