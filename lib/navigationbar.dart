import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        destinations: const [
          NavigationDestination(icon: Icon(CupertinoIcons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(CupertinoIcons.cart), label: 'Market'),
          NavigationDestination(
              icon: Icon(CupertinoIcons.bell), label: 'Notification'),
          NavigationDestination(
              icon: Icon(CupertinoIcons.person), label: 'Profile')
        ],
      ),
    );
  }
}
