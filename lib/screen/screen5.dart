// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:irun/tutorial_flutter/tutorialflutter.dart';
import 'package:irun/widgets/exit_popup.dart';

class Screen5 extends StatelessWidget {
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

          // Center(
          //   child: Text(
          //     "Screen 1",
          //     style: TextStyle(
          //       fontSize: 30,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
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
        // shadowColor: Colors.pink,
        // elevation: 10,
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



// class Screen5 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text('LEARN PROGRAMMING'),
//         centerTitle: true,
//         backgroundColor: Colors.teal,
//       ),
//       body: GridView(
//         padding: EdgeInsets.only(top: 20, bottom: 75),

//         gridDelegate:
//             SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
//         // SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 190),
//         children: [
//           InkWell(
//             onTap: () {},
//             splashColor: Colors.teal,
//             child: Ink.image(
//               image: NetworkImage(
//                   "https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png"),
//             ),
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(MaterialPageRoute(
//                 builder: (context) {
//                   return TutorialFlutter();
//                 },
//               ));
//             },
//             splashColor: Colors.teal,
//             child: Ink.image(
//               image: NetworkImage(
//                   "https://www.eudeka.id/wp-content/uploads/2021/04/flutter-logo-sharing-1.png"),
//             ),
//           ),
//           InkWell(
//             onTap: () {},
//             splashColor: Colors.teal,
//             child: Ink.image(
//               image: NetworkImage(
//                   "https://img.devrant.com/devrant/rant/r_1157787_rihH5.jpg"),
//             ),
//           ),
//           InkWell(
//             onTap: () {},
//             splashColor: Colors.teal,
//             child: Ink.image(
//               image: NetworkImage(
//                   "https://academy.alterra.id/blog/wp-content/uploads/2021/07/Logo-C.png"),
//             ),
//           ),
//           InkWell(
//             onTap: () {},
//             splashColor: Colors.teal,
//             child: Ink.image(
//               image: NetworkImage(
//                   "http://2.bp.blogspot.com/-K0Hz1rLS9jQ/VgaT5UqVnmI/AAAAAAAAASU/HpKs_qhogtw/s320/CPlusPlus.jpg"),
//             ),
//           ),
//           InkWell(
//             onTap: () {},
//             splashColor: Colors.teal,
//             child: Ink.image(
//               image: NetworkImage(
//                   "https://images.squarespace-cdn.com/content/v1/5d092c5193b409000129adc4/1561155751778-7O5GE7G27LESO2YB5BX4/phplogo.jpg"),
//             ),
//           ),
//           InkWell(
//             onTap: () {},
//             splashColor: Colors.teal,
//             child: Ink.image(
//               image: NetworkImage(
//                   "https://cdn.icon-icons.com/icons2/1488/PNG/512/5352-html5_102567.png"),
//             ),
//           ),
//           InkWell(
//             onTap: () {},
//             splashColor: Colors.teal,
//             child: Ink.image(
//               image: NetworkImage(
//                   "https://cdn.icon-icons.com/icons2/1826/PNG/512/4202020css3htmllogosocialsocialmedia-115668_115633.png"),
//             ),
//           ),
//           InkWell(
//             onTap: () {},
//             splashColor: Colors.teal,
//             child: Ink.image(
//               image: NetworkImage(
//                   "https://www.offlineinstallerapps.com/wp-content/uploads/2017/08/download-1.png"),
//             ),
//           ),
//         ],
//       ),
//     );

//     // Center(
//     //     child: InkWell(
//     //   splashColor: Colors.teal,
//     //   onTap: () {
//     //     Navigator.of(context).push(
//     //       MaterialPageRoute(
//     //         builder: (context) {
//     //           return TutorialFlutter();
//     //         },
//     //       ),
//     //     );
//     //   },
//     //   child: Image.network(
//     //     "https://www.eudeka.id/wp-content/uploads/2021/04/flutter-logo-sharing-1.png",
//     //     height: 200,
//     //     width: 200,
//     //     fit: BoxFit.cover,
//     //   ),
//     // )

//     // child: Text(
//     //   "TUTORIAL MOBILE DEVELOPMENT",
//     //   style: TextStyle(
//     //     fontSize: 30,
//     //     fontWeight: FontWeight.bold,
//     //   ),
//     // ),
//     //       ),
//     // );
//   }
// }