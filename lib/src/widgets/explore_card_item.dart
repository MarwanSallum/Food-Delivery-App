import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/widgets/interactive_button.dart';

class ExploreCardItem extends StatelessWidget {
   String imagePath;

   ExploreCardItem({@required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              offset: Offset(0,2),
              color: Colors.black38,
            )
          ]
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            width: 180.0,
            height: 180.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20.0)
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text("Name of Food", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15.0),
                    child: Text("This is the description of the food item"
                        "This is the description of the food item", textAlign: TextAlign.left, style: TextStyle(color: Colors.grey),),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("17.94", style: TextStyle(color: Colors.blueAccent, fontSize: 18, fontWeight: FontWeight.bold),),
                      InteractiveBotton(title: "Buy", onTap: (){},),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}