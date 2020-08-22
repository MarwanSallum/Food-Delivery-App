import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/widgets/explore_card_item.dart';
import 'package:food_delivery_app/src/widgets/interactive_button.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 50.0),
        child: Column(
          children: [
            Text("All Food Items", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            ExploreCardItem(imagePath: "assets/images/lunch.jpeg",),
            ExploreCardItem(imagePath: "assets/images/lanch2.jpg",),
            ExploreCardItem(imagePath: "assets/images/lanch3.jpg",),


          ],
        ),
      ),
    );
  }
}


