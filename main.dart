import 'package:flutter/material.dart';
import 'package:supermarket/Editaddress.dart';
import 'package:supermarket/checkout.dart';
import 'package:supermarket/summary.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SummaryPage(),
    );
  }
}
