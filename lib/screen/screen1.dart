// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:irun/screen/screen5.dart';
import 'package:irun/tutorial_flutter/tutorialflutter.dart';
import 'package:irun/widgets/exit_popup.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "tutorialFlutter": (context) => TutorialFlutter(),
      },
      home: WillPopScope(
        onWillPop: () => showExitPopup(context),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            centerTitle: true,
            title: Text("LEARN PROGRAMMING"),
            leading:
                IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit_rounded)),
          ),
          body: Container(
            child: GridView.count(
              crossAxisCount: 2,
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 80),

              // childAspectRatio: 10,
              children: [
                MyMenu(
                    warnaMenu: Colors.purple,
                    halaman: "tutorialFlutter",
                    textMenu: "C++",
                    urlMenu:
                        "https://blog.hacktiv8.com/content/images/size/w2000/2020/04/shutterstock_1233726961--1--1.jpg"),
                MyMenu(
                    warnaMenu: Colors.amber,
                    halaman: "tutorialFlutter",
                    textMenu: "FLUTTER",
                    urlMenu:
                        "https://i1.wp.com/www.nesabamedia.com/wp-content/uploads/2019/02/featuredImage-programmer.jpg?fit=670%2C446&ssl=1"),
                MyMenu(
                    warnaMenu: Colors.red,
                    halaman: "tutorialFlutter",
                    textMenu: "DART",
                    urlMenu:
                        "https://bsmedia.business-standard.com/_media/bs/img/article/2021-01/14/full/1610640588-3918.jpg"),
                MyMenu(
                    warnaMenu: Colors.blue,
                    halaman: "tutorialFlutter",
                    textMenu: "JAVA",
                    urlMenu:
                        "https://cdn.antaranews.com/cache/800x533/2020/04/04/hacker-peretas.jpg"),
                MyMenu(
                    warnaMenu: Colors.green,
                    halaman: "tutorialFlutter",
                    textMenu: "HTML",
                    urlMenu:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfGDCfYtDddZAu4qIN6Rsj4cQ6Q6v4Nxz7CMTHV1eTDgb4hEoaRpAxWO808YD6lICCZjg&usqp=CAU"),
                MyMenu(
                    warnaMenu: Colors.pink,
                    halaman: "tutorialFlutter",
                    textMenu: "PHP",
                    urlMenu:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkn3QY41ONlVi2mXnc3h9WatXh5hP8Yy5a_Q&usqp=CAU"),
                MyMenu(
                    warnaMenu: Colors.deepOrange,
                    halaman: "tutorialFlutter",
                    textMenu: "CSS",
                    urlMenu:
                        "https://blog.hacktiv8.com/content/images/size/w2000/2020/04/shutterstock_1233726961--1--1.jpg"),
                MyMenu(
                    warnaMenu: Colors.teal,
                    halaman: "tutorialFlutter",
                    textMenu: "JS",
                    urlMenu:
                        "https://pict.sindonews.net/dyn/480/pena/news/2020/09/30/178/181114/busyet-segini-lho-kerugian-perbankan-akibat-dibobol-hacker-wjr.jpg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  final MaterialColor warnaMenu;
  final String urlMenu;
  final String textMenu;
  final halaman;

  const MyMenu(
      {required this.warnaMenu,
      required this.textMenu,
      required this.halaman,
      required this.urlMenu});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: warnaMenu, borderRadius: BorderRadius.circular(25)),
      child: Stack(
        children: [
          Opacity(
            opacity: 0.5,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(urlMenu), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(25)),
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(10),
            splashColor: Colors.red,
            onTap: () {
              Navigator.of(context).pushNamed(halaman);
            },
            child: Center(
              child: Text(
                textMenu,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
