import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {

  final String categoryName;
  final String imagePath;
  final int numberOfItem;

  FoodCard({this.categoryName, this.imagePath, this.numberOfItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Container(
        margin: EdgeInsets.only(right: 20.0) ,
        child: Container(
          child: Row(
            children: [
              Image.asset(imagePath, height: 65.0, width: 65.0,),
              SizedBox(width: 20.0,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(categoryName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                Text("$numberOfItem Kinds")
              ],)
            ],
          ),
        ),
      ),
    );
  }
}


