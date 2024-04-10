// ignore_for_file: use_super_parameters, library_private_types_in_public_api, prefer_const_constructors, unused_import

import 'dart:async';
import 'package:farm_linker/navigationbar.dart';
import 'package:farm_linker/userprofile.dart';
import 'package:flutter/material.dart';
// Assuming you have a NextPage widget to navigate to, import it here.

class Loding extends StatefulWidget {
  const Loding({Key? key}) : super(key: key);

  @override
  _LodingState createState() => _LodingState();
}

class _LodingState extends State<Loding> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      // Navigate to the NextPage widget after a delay
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const User_profile()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'asset/image/FarmLinker.png',
              width: 300,
              height: 300,
            ),
            SizedBox(height: 30),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                  Color.fromARGB(255, 43, 181, 48)),
            ), // Loading indicator
            SizedBox(height: 20), // Space after the loading bar
            Text('Loading...'), // Optional loading text
          ],
        ),
      ),
    );
  }
}
