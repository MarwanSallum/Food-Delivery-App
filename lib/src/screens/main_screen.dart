import 'package:flutter/material.dart';

// Pages
import 'package:food_delivery_app/src/pages/home_page.dart';
import 'package:food_delivery_app/src/pages/order_page.dart';
import 'package:food_delivery_app/src/pages/explore_page.dart';
import 'package:food_delivery_app/src/pages/profile_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentTabIndex = 0;
  List<Widget> pages;
  Widget currentPage;

  HomePage homePage;
  OrderPage orderPage;
  ExplorePage explorePage;
  ProfilePage profilePage;

  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();
    explorePage = ExplorePage();
    profilePage = ProfilePage();

    pages = [homePage, explorePage, orderPage, profilePage];
    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text("Explore"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            title: Text("Orders"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      ),

      body: currentPage,
    );
  }
}
