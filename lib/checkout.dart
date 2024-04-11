// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters

import 'package:farm_linker/Editaddress.dart';
import 'package:farm_linker/payments.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String _paymentMethod = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primarySwatch: Colors.green, // Set the primary color to green
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Checkout',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment Methods:',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Container(
                  color: Colors.lightGreen[100], // Set light green background
                  child: RadioListTile(
                    title: Text('Cash on delivery'),
                    value: 'cod',
                    groupValue: _paymentMethod,
                    onChanged: (value) =>
                        setState(() => _paymentMethod = value as String),
                  ),
                ),
                Container(
                  color: Colors.lightGreen[100], // Set light green background
                  child: RadioListTile(
                    title: Text('Bank Deposit'),
                    value: 'bank_deposit',
                    groupValue: _paymentMethod,
                    onChanged: (value) =>
                        setState(() => _paymentMethod = value as String),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Location Details:',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Text(
                  '127/D,Park Road, Hawlock City, Colombo\nThe street beside usmer hotels,\nafter Kings and Queens Schools\n0773561238',
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      // Navigate to edit location page
                      // Replace MaterialPageRoute with your desired navigation logic
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditAddressScreen()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 73, 245,
                              79)), // Set the background color to green
                    ),
                    child: Text('Edit', style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Order Summary:',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Subtotal:'),
                    Text('LKR 3125.00'),
                  ],
                ),

                SizedBox(height: 5.0), // Add space
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery:'),
                    Text('LKR 350.00'),
                  ],
                ),
                SizedBox(height: 5.0), // Add space
                Divider(), // Add divider
                SizedBox(height: 5.0), // Add space
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'LKR 3475.00',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Implement payment processing logic here
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PaymentS()),
                        );
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 71, 232,
                              76)), // Set the background color to green
                    ),
                    child: Text(
                      'Pay',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
