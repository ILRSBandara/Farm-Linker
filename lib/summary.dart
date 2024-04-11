// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters

import 'package:farm_linker/checkout.dart';
import 'package:flutter/material.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({Key? key}) : super(key: key);

  @override
  State<SummaryPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Summary',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 112, 111, 111)),
              ),
            ),
            SizedBox(height: 20.0),
            Column(
              children: [
                Container(
                  height: 60.0, // Set the desired height
                  color: Colors.green[100], // Set green background color
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Mango 2KG'),
                      Text('LKR 1000.00'),
                    ],
                  ),
                ),
                SizedBox(height: 30.0), // Add spacing between containers
                Container(
                  height: 60.0, // Set the desired height
                  color: Colors.green[100], // Set green background color
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Orange 5 KG'),
                      Text('LKR 1750.00'),
                    ],
                  ),
                ),
                SizedBox(height: 30.0), // Add spacing between containers
                Container(
                  height: 60.0, // Set the desired height
                  color: Colors.green[100], // Set green background color
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bell Papers 500g'),
                      Text('LKR 375.00'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 90.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal'),
                Text('LKR 3125.00'),
              ],
            ),
            SizedBox(height: 10.0),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total'),
                Text('LKR 3125.00'),
              ],
            ),
            SizedBox(height: 30.0),
            Center(
              child: ElevatedButton(
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CheckoutPage()))
                }, // Implement payment processing logic here
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(
                      255, 71, 232, 76), // Set the button color to green
                ),
                child: Text(
                  'Place Order',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
