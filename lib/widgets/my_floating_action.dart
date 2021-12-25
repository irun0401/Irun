import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyFloatingActin extends StatelessWidget {
  final url;
  MyFloatingActin({required this.url});

  // final tekanFloating;
  // const MyFloatingActin({required this.tekanFloating});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.ac_unit_rounded),
      onPressed: () async {
        await MembukaUrl(url);
      },
      backgroundColor: Colors.indigoAccent,
    );
  }
}

Future<void> MembukaUrl(String url,
    {bool forceWebView = true, bool enableJavaScript = true}) async {
  if (await canLaunch(url)) {
    await launch(url,
        forceWebView: forceWebView, enableJavaScript: enableJavaScript);
  }
}
