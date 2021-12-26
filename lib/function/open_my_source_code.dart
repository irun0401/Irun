import 'package:url_launcher/url_launcher.dart';

Future<void> aksiOpenUrl(String linkLokasi) async {
  if (await canLaunch(linkLokasi))
    await {launch(linkLokasi, forceWebView: true, enableJavaScript: true)};
}
