import 'package:flutter/material.dart';
import 'package:irun/widgets/my_floating_action_view_source_code.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webView extends StatelessWidget {
  const webView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: WebView(
          initialUrl: "https://WWW.amazon.com",
          javascriptMode: JavascriptMode.unrestricted,
        ),
        floatingActionButton: MyFloatingActionViewSourceCode(
            linkLokasi:
                "https://github.com/irun0401/Irun/blob/master/lib/tutorial_flutter/web_view_page.dart"),
      ),
    );
  }
}
