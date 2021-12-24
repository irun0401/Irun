import 'package:flutter/material.dart';
import 'package:irun/widgets/exit_popup.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WillPopScope(
        onWillPop: () => showExitPopup(context),
        child: Scaffold(
          appBar: AppBar(
            title: Text("PERTAMA"),
          ),
        ),
      ),
    );
  }
}
