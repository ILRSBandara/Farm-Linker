// ignore_for_file: library_private_types_in_public_api
import 'dart:async';
import 'package:farm_linker/screen/loding.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const Loding()), // Corrected
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'asset/img/FarmLinker.png',
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
