// ignore_for_file: use_super_parameters, library_private_types_in_public_api, prefer_const_constructors, unused_import

import 'dart:async';

import 'package:farm_linker/screen/signinpage.dart';

import 'package:flutter/material.dart';

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
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const SignInPage()),
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
              'asset/img/FarmLinker.png',
              width: 300,
              height: 300,
            ),
            SizedBox(height: 30),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                  Color.fromARGB(255, 43, 181, 48)),
            ), // Loading indicator
            SizedBox(height: 20),
            Text('Loading...'),
          ],
        ),
      ),
    );
  }
}
