// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:irun/screen/screen3.dart';
import 'package:irun/tutorial_flutter/url_launcher.dart';
import 'package:irun/widgets/exit_popup.dart';

class TutorialFlutter extends StatelessWidget {
  const TutorialFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WillPopScope(
        onWillPop: () => showExitPopup(context),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text("TUTORIAL FLUTTER"),
          ),
          body: ListView(
            children: [
              MateriBelajar(
                  judul: "Belajar Fluter Dasar", layar: UrlLauncherPage()),
              MateriBelajar(
                  judul: "Url Launcher (link, sms, telp,email",
                  layar: UrlLauncherPage()),
            ],
          ),
        ),
      ),
    );
  }
}

class MateriBelajar extends StatelessWidget {
  const MateriBelajar({required this.judul, required this.layar});

  final layar;
  final judul;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return layar;
          },
        ));
      },
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
            child: Text(
          judul,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
