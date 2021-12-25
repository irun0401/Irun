import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class MyConvexBottom extends StatefulWidget {
  const MyConvexBottom({Key? key}) : super(key: key);

  @override
  _MyConvexBottomState createState() => _MyConvexBottomState();
}

class _MyConvexBottomState extends State<MyConvexBottom> {
  int _selectedNavBar = 2;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavBar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
        // ConvexAppBar(
        // body: Center(
        //   child: Text(
        //     'Tab Index Yang Aktiv : $_selectedNavBar',
        //     style: TextStyle(fontSize: 16),
        //   ),
        // ),
        // bottomNavigationBar:
        ConvexAppBar(
      backgroundColor: Colors.teal,
      items: [
        TabItem(title: "Home", icon: Icons.home),
        TabItem(title: "map", icon: Icons.map),
        TabItem(title: "add", icon: Icons.add),
        TabItem(title: "message", icon: Icons.message),
        TabItem(title: "people", icon: Icons.people),
      ],
      color: Colors.white,
      height: 60,
      initialActiveIndex: _selectedNavBar,
      onTap: _changeSelectedNavBar,
    );
    // ),
    // );
  }
}
