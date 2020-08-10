
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Delivery App",
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: HomeScreen(),
    );
  }
}