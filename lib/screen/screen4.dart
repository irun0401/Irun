// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:irun/widgets/exit_popup.dart';
import 'package:url_launcher/url_launcher.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  openBrowser(
                      url: "https://github.com/irun0401/Irun",
                      forceWebView: true,
                      enableJavaScript: true);
                },
                icon: Icon(Icons.ac_unit_rounded))
          ],
          title: Text('My Favorite Anime & Donghua'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: GridView.count(
          padding: EdgeInsets.all(10),
          crossAxisCount: 2,
          children: [
            animeFavorit(
              urlAnime:
                  "https://anoboy.watch/category/one-piece-subtitle-indonesia/",
              gambarList:
                  "https://www.greenscene.co.id/wp-content/uploads/2020/07/zoro-one-piece.jpg",
            ),
            animeFavorit(
              urlAnime:
                  "https://anoboy.watch/category/boruto-naruto-next-generations/",
              gambarList:
                  "https://pict-a.sindonews.net/dyn/360/pena/news/2021/10/27/700/581850/10-jurus-terkuat-boruto-yang-berguna-untuk-masa-depannya-gqm.jpg",
            ),
            animeFavorit(
              urlAnime: "https://anichin.my.id/wonderland-season-5/",
              gambarList:
                  "https://i1.wp.com/anichin.my.id/wp-content/uploads/2021/06/Wonderland-S5-Ye-Xingyun.jpg?resize=247,350",
            ),
            animeFavorit(
              urlAnime: "https://anichin.my.id/wu-geng-ji-season-4/",
              gambarList:
                  "https://i1.wp.com/anichin.my.id/wp-content/uploads/2021/07/Ni-Tian-Xing-Er.jpg?resize=247,350",
            ),
            animeFavorit(
              urlAnime: "https://anichin.my.id/soul-land-season-2/",
              gambarList:
                  "https://i3.wp.com/anichin.my.id/wp-content/uploads/2020/03/Soul-Land-2.jpg?resize=247,350",
            ),
            animeFavorit(
              urlAnime:
                  "https://anichin.my.id/battle-through-the-heavens-three-year-agreement/",
              gambarList:
                  "https://i0.wp.com/anichin.my.id/wp-content/uploads/2021/10/BTTH-3-Year-Agreement.jpg?resize=247,350",
            ),
          ],
        ),
      ),
    );
  }
}

// class untuk list anime
class animeFavorit extends StatelessWidget {
  final gambarList;
  final urlAnime;

  animeFavorit({required this.gambarList, required this.urlAnime});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.pink,
      onTap: () async {
        openBrowser(url: urlAnime, forceWebView: false, enableJavaScript: true);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image(
            fit: BoxFit.cover,
            image: NetworkImage(
              gambarList,
            ),
          ),
        ),
      ),
    );
  }
}

//fungsi untuk menjalankan open url
//url di cek terlebih dahulu
Future openBrowser(
    {required String url,
    required bool forceWebView,
    required bool enableJavaScript}) async {
  if (await canLaunch(url)) {
    launch(url, forceWebView: forceWebView, enableJavaScript: enableJavaScript);
  } else {
    launch("https://www.google.com");
  }
}
