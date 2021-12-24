import 'package:flutter/material.dart';
import 'package:irun/widgets/exit_popup.dart';
import 'package:url_launcher/url_launcher.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
          // backgroundColor: Colors.white,
          appBar: AppBar(
            actions: [
              IconButton(onPressed: ontap, icon: Icon(Icons.ac_unit_rounded))
            ],
            title: Text('ANIME & DONGHUA'),
            centerTitle: true,
            backgroundColor: Colors.teal,
          ),
          body: GridView.count(
            padding: EdgeInsets.all(10),
            crossAxisCount: 2,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://i.pinimg.com/originals/5b/c8/a1/5bc8a1d27a5c798d7d49f5341bb91180.jpg",
                    ),
                  ))
            ],
          )
          // Container(
          //   color: Colors.amber,
          //   child: Text(
          //     "Screen 4",
          //     style: TextStyle(
          //       fontSize: 30,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          ),
    );
  }
}

ontap() async {
  await OpenUrl(
      "https://github.com/irun0401/Irun/blob/c43da1250912d4e8a711bc706a5c10448580dd47/lib/screen/screen4.dart",
      forceWebView: true,
      enableJavaScript: true);
}

Future<void> OpenUrl(String url,
    {bool forceWebView = false, bool enableJavaScript = false}) async {
  if (await canLaunch(url)) {
    await launch(url,
        forceWebView: forceWebView, enableJavaScript: enableJavaScript);
  }
}
