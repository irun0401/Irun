import 'package:flutter/material.dart';
import 'package:irun/widgets/my_floating_action.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webView extends StatelessWidget {
  const webView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: WebView(
          initialUrl: "https://anichin.my.id",
          javascriptMode: JavascriptMode.unrestricted,
        ),
        floatingActionButton: MyFloatingActin(url: "https://www.google.com"),
      ),
    );
  }
}
