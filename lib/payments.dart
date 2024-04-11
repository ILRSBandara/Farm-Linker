// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unused_import

import 'package:farm_linker/Editaddress.dart';
import 'package:farm_linker/mycart.dart';
import 'package:farm_linker/summary.dart';
import 'package:flutter/material.dart';

class PaymentS extends StatelessWidget {
  const PaymentS({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: 350,
                height: 200,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Color.fromARGB(225, 202, 242, 228),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Your Payment was Successful!',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Glad you chose us',
                      style: TextStyle(
                        color: Color.fromARGB(255, 3, 154, 8),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 50,
                left: 120,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/image/FarmLinker.png'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
              ),
            ], // Close Stack children
          ), // Close Stack
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: ElevatedButton(
              onPressed: () {
                // Button action
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyCart()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Color.fromARGB(255, 32, 247, 139), // Change color as needed
              ),
              child: Text(
                'OK', // Change text as needed
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ], // Close Column children
      ), // Close Column
    ); // Close Scaffold
  }
}
