// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: User_profile(),
    ),
  );
}

class User_profile extends StatelessWidget {
  const User_profile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "User Profile",
          textAlign: TextAlign.right,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Container(
                width: 350,
                height: 50,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Color.fromARGB(224, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Stefani Wong',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18, // Change font size here
                      ),
                    ),
                    Text(
                      'Joined since 27 Dec 2020 ',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 12, // Change font size here
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 20,
                left: 30,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'asset/image/profile.png'), // Path to your PNG image
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                right: 30,
                child: ElevatedButton(
                  onPressed: () {
                    // Button action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(
                        255, 32, 247, 139), // Change the color here
                  ),
                  child: Text(
                    'Edit',
                    style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 350,
            height: 200,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(225, 202, 242, 228),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  dense: true,
                  leading: Icon(Icons.settings),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 18, // Change font size here
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: Icon(Icons.shopping_cart),
                  title: Text(
                    'Cart',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14, // Change font size here
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: Icon(Icons.location_on),
                  title: Text(
                    'Location',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14, // Change font size here
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 350,
            height: 150,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(225, 202, 242, 228),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  dense: true,
                  leading: Icon(Icons.notifications),
                  title: Text(
                    'Notification',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 18, // Change font size here
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: Icon(Icons.notifications_active),
                  title: Text(
                    'Pop-up Notification',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14, // Change font size here
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 350,
            height: 200,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(225, 202, 242, 228),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  dense: true,
                  leading: Icon(Icons.more_vert),
                  title: Text(
                    'Others',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 18, // Change font size here
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: Icon(Icons.info),
                  title: Text(
                    'About Us',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14, // Change font size here
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: Icon(Icons.headset_mic),
                  title: Text(
                    'Customer Service',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14, // Change font size here
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: Icon(Icons.rate_review),
                  title: Text(
                    'User’s Review',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14, // Change font size here
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
