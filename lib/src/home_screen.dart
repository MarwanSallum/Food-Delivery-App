import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/widgets/food_category.dart';
import 'package:food_delivery_app/src/widgets/home_top_info.dart';
import 'package:food_delivery_app/src/widgets/search_field.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        ],
      ),
    );
  }
}
