import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyCurvedBottom extends StatelessWidget {
  final int index = 2;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Colors.teal,
      items: [
        Icon(Icons.favorite),
        Icon(Icons.ac_unit_rounded),
        Icon(Icons.home),
        Icon(Icons.settings),
        Icon(Icons.person),
      ],
      height: 60,
      index: index,
      backgroundColor: Colors.transparent,
      // buttonBackgroundColor: Colors.pink,
    );
  }
}
