import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/widgets/order_card.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Food Cart", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        scrollDirection: Axis.vertical,
        children: [
          OrderCart(),
          OrderCart(),
          OrderCart(),
          OrderCart(),
          OrderCart(),
          OrderCart(),
          OrderCart(),
          OrderCart(),
          OrderCart(),
          OrderCart(),
          OrderCart(),
        ],
      ),
      bottomNavigationBar: _buildTotalContainer(),
    );
  }

  Widget _buildTotalContainer(){
    return Container(
      height: 260,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Cart Total", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
              Text("23.0", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black54),),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Discount", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
              Text("3.0", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black54),),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Tax", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
              Text("0.5", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black54),),
            ],
          ),
          Divider(height: 40.0, color: Color(0xFFD3D3D3),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Sub Total", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
              Text("26.5", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black54),),
            ],
          ),
          SizedBox(height: 20.0,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Center(
              child: Text("Proceed to Checkout",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
