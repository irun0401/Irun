//gunakan url_launcher: ^6.0.17

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherPage extends StatelessWidget {
  const UrlLauncherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Url Launcher"),
        ),
        body: Center(
          child: Column(
            children: [
              WidgetLauncher(
                "call,",
                () async {
                  await Call("+6282221422111");
                },
              ),
              WidgetLauncher(
                "sms,",
                () async {
                  await SMS("+62082221422111");
                },
              ),
              WidgetLauncher(
                "email,",
                () async {
                  await Email("irun0401@gmail.com");
                },
              ),
              WidgetLauncher(
                "OpenUrl YOUTUBE,",
                () async {
                  await OpenUrl(
                      "https://www.youtube.com/watch?v=8DgJnucRBss&t=172s");
                },
              ),
              WidgetLauncher(
                "OpenUrl PLAYSTORE,",
                () async {
                  await OpenUrl(
                      "https://play.google.com/store/apps/details?id=com.facebook.katana&hl=en&gl=US");
                },
              ),
              WidgetLauncher(
                "OpenUrl via browser,",
                () async {
                  await OpenUrl("https://anichin.my.id",
                      forceWebView: false, enableJavaScript: false);
                },
              ),
              WidgetLauncher(
                "OpenUrl via aplikasi/webview,",
                () async {
                  await OpenUrl("https://anichin.my.id",
                      forceWebView: true, enableJavaScript: true);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WidgetLauncher extends StatelessWidget {
  final ontap;
  final String text;
  WidgetLauncher(this.text, this.ontap);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text),
        SizedBox(
          width: 200,
          child: IconButton(onPressed: ontap, icon: Icon(Icons.access_alarm)),
        ),
      ],
    );
  }
}

Future<void> Call(String phoneNumber) async {
  await launch("tel:$phoneNumber");
}

Future<void> SMS(String phoneNumber) async {
  await launch("sms:$phoneNumber");
}

Future<void> Email(String email) async {
  await launch("mailto:$email");
}

Future<void> OpenUrl(String url,
    {bool forceWebView = false, bool enableJavaScript = false}) async {
  if (await canLaunch(url)) {
    await launch(url,
        forceWebView: forceWebView, enableJavaScript: enableJavaScript);
  }
}
