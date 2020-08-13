import 'package:flutter/material.dart';

class BoughtFoods extends StatefulWidget {

  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;


  BoughtFoods({this.id, this.name, this.imagePath, this.category, this.price,
    this.discount, this.ratings});

  @override
  _BoughtFoodsState createState() => _BoughtFoodsState();
}

class _BoughtFoodsState extends State<BoughtFoods> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 200.0,
            width: double.infinity,
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              height: 60.0,
              width: 380,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.black12],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned(
            left: 30.0,
            bottom: 10.0,
            right: 30.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),

                        SizedBox(width: 20.0,),

                        Text("(${widget.ratings.toString()} Reviews)",
                        style: TextStyle(color: Colors.grey),
                        )

                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(widget.ratings.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      fontSize: 18.0
                    ),
                    ),
                    Text("Min Order",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    )
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
