import 'package:flutter/material.dart';
import 'package:irun/widgets/exit_popup.dart';
import 'package:irun/widgets/my_convex_bottom.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        bottomNavigationBar: MyConvexBottom(),
        body: Center(
          child: Text(
            "Screen 3",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
