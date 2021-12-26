// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:irun/tutorial_flutter/tutorialflutter.dart';

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "tutorialFlutter": (context) => TutorialFlutter(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('LEARN PROGRAMMING'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 0, bottom: 70, left: 30, right: 30),
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              MyMenu(
                halaman: "tutorialFlutter",
                urlsrc:
                    "https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png",
                title: "HOME",
                warna: Colors.blue,
              ),
              MyMenu(
                halaman: "tutorialFlutter",
                urlsrc:
                    "https://www.eudeka.id/wp-content/uploads/2021/04/flutter-logo-sharing-1.png",
                title: "HOME",
                warna: Colors.blue,
              ),
              MyMenu(
                halaman: "tutorialFlutter",
                urlsrc:
                    "https://plumbr.io/app/uploads/blog-image/observations-about-shenandoah-1.png",
                title: "HOME",
                warna: Colors.blue,
              ),
              MyMenu(
                halaman: "tutorialFlutter",
                urlsrc: "https://pngimg.com/uploads/php/php_PNG29.png",
                title: "HOME",
                warna: Colors.blue,
              ),
              MyMenu(
                halaman: "tutorialFlutter",
                urlsrc:
                    "https://img.favpng.com/10/23/21/c-programming-language-icon-png-favpng-878WK0RF2zxn7b6TimT7zquZN.jpg",
                title: "HOME",
                warna: Colors.blue,
              ),
              MyMenu(
                halaman: "tutorialFlutter",
                urlsrc:
                    "https://img.favpng.com/17/10/23/the-c-programming-language-computer-programming-png-favpng-y9Cye5Z4PcdzLK9aYYK1izU4q.jpg",
                title: "HOME",
                warna: Colors.blue,
              ),
              MyMenu(
                halaman: "tutorialFlutter",
                urlsrc:
                    "https://cdn.icon-icons.com/icons2/1488/PNG/512/5352-html5_102567.png",
                title: "HOME",
                warna: Colors.blue,
              ),
              MyMenu(
                halaman: "tutorialFlutter",
                urlsrc:
                    "https://cdn.icon-icons.com/icons2/1826/PNG/512/4202020css3htmllogosocialsocialmedia-115668_115633.png",
                title: "HOME",
                warna: Colors.blue,
              ),
              MyMenu(
                halaman: "tutorialFlutter",
                urlsrc:
                    "https://www.offlineinstallerapps.com/wp-content/uploads/2017/08/download-1.png",
                title: "HOME",
                warna: Colors.blue,
              ),
              MyMenu(
                halaman: "tutorialFlutter",
                urlsrc:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Kotlin_Icon.png/600px-Kotlin_Icon.png",
                title: "HOME",
                warna: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu(
      {required this.title,
      required this.urlsrc,
      required this.halaman,
      required this.warna});
  final String title;
  final String urlsrc;
  final MaterialColor warna;
  final halaman;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacementNamed(halaman);
      },
      child: Container(
        decoration: BoxDecoration(
          color: warna,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                height: 95,
                width: 95,
                fit: BoxFit.fill,
                image: NetworkImage(urlsrc),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
