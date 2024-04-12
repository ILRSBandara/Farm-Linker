// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, unused_import

import 'package:farm_linker/screen/Editaddress.dart';
import 'package:farm_linker/screen/summary.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyCart(),
    ),
  );
}

class MyCart extends StatelessWidget {
  const MyCart({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Cart",
          textAlign: TextAlign.right,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 350,
                height: 150,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Color.fromARGB(225, 202, 242, 228),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery to home',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Please provide your home address',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 60,
                left: 40,
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/img/delivery.png'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
              ),
              Positioned(
                top: 100,
                right: 30,
                child: ElevatedButton(
                  onPressed: () {
                    // Button action
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditAddressScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 238, 238, 238)),
                  child: Text(
                    'Set Location',
                    style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 350,
            height: 400,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(224, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Button action
                  },
                  child: Row(
                    children: [
                      Icon(Icons.store_outlined),
                      SizedBox(width: 10),
                      Text(
                        'Your Order',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                // Button action
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SummaryPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(
                    225, 202, 242, 228), // Change color as needed
              ),
              child: Text(
                'Place Order', // Change text as needed
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
