import 'package:flutter/material.dart';
import 'package:irun/screen/home_page.dart';
import 'package:irun/tutorial_flutter/tutorialflutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {"tutorialFlutter": (context) => TutorialFlutter()},
    );
  }
}
