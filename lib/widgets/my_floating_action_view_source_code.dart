import 'package:flutter/material.dart';
import 'package:irun/function/open_my_source_code.dart';

class MyFloatingActionViewSourceCode extends StatelessWidget {
  final linkLokasi;
  // final forceWebView;
  // final enableJavaScript;

  // MyFloatingActionViewSourceCode(
  //     {required this.linkLokasi,
  //     required this.forceWebView,
  //     required this.enableJavaScript});
  // final tekanFloating;
  MyFloatingActionViewSourceCode({required this.linkLokasi});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.ac_unit_rounded),
      onPressed: () async {
        await aksiOpenUrl(linkLokasi);
      },
      backgroundColor: Colors.indigoAccent,
    );
  }
}
