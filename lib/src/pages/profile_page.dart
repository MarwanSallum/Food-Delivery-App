import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/widgets/custom_list_tile.dart';
import 'package:food_delivery_app/src/widgets/interactive_button.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool turnOnNotification = false;
  bool turnOnLocationTracking = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Profile", style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 20.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3.0,
                          offset: Offset(0, 4.0),
                          color: Colors.black38,
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage("assets/images/profil.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Marwan Sallum", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10.0,),
                      Text("+966544075175", style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 20.0,),
                      InteractiveBotton(title: "Edit", onTap: (){},),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Text("Account",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 30.0,),
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all( 16.0),
                  child: Column(
                    children: [
                      CustomListTile(icon: Icons.location_on, text: "Location",),
                      Divider(height: 15.0, color: Colors.grey,),
                      CustomListTile(icon: Icons.visibility, text: "Change Password",),
                      Divider(height: 15.0, color: Colors.grey,),
                      CustomListTile(icon: Icons.shopping_cart, text: "Shipping",),
                      Divider(height: 15.0, color: Colors.grey,),
                      CustomListTile(icon: Icons.payment, text: "Payment",),
                      Divider(height: 15.0, color: Colors.grey,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Text("Notification",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0,),
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("App Notification",
                            style: TextStyle(
                              fontSize: 16.0,
                          ),
                          ),
                          Switch(
                            value: turnOnNotification,
                            onChanged: (bool value){
                              setState(() {
                                turnOnNotification = value;
                              });
                            },
                          ),
                        ]
                      ),
                      Divider(height: 10.0,
                      color: Colors.grey,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Location Tracking",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            Switch(
                              value: turnOnLocationTracking,
                              onChanged: (bool value){
                                setState(() {
                                  turnOnLocationTracking = value;
                                });
                              },
                            ),
                          ]
                      ),
                      Divider(height: 10.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Text("Other",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0,),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Language", style: TextStyle(fontSize: 16.0),),
                        SizedBox(height: 20.0,),
                        Divider(height: 10.0, color: Colors.grey,),
                        SizedBox(height: 10.0,),
                        Text("Currency", style: TextStyle(fontSize: 16.0),),
                        SizedBox(height: 20.0,),
                        Divider(height: 10.0,color: Colors.grey,),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


