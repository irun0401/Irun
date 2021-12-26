import 'package:url_launcher/url_launcher.dart';

Future openUrl(url) async {
  await launch(url);
}
