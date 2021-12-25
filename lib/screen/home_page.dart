import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:irun/screen/screen1.dart';
import 'package:irun/screen/screen2.dart';
import 'package:irun/screen/screen3.dart';
import 'package:irun/tutorial_flutter/tutorialflutter.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      // appBar: AppBar(
      // title: Text("IRUN UZUMAKI"),
      // ),
      body: Builder(
        builder: (context) => LiquidSwipe(
          pages: [
            Screen1(),
            Screen2(),
            Screen3(),
            TutorialFlutter(),
          ],
          // enableLoop: true,
          // enableSideReveal: true,
          // slideIconWidget: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}

// Scaffold(
//         appBar: AppBar(
//           title: Text("IRUN UZUMAKI"),
//         ),
//         body: Builder(
//           builder: (context) => LiquidSwipe(
//             pages: [
//               // Container(),
//               Screen1(),
//               Container(
//                 height: MediaQuery.of(context).size.height,
//                 child: Image.network(
//                   'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//91/MTA-13404860/oem_sepatu_pria_sneakers_pria_sepatu_pria_xv_full01_cg3d0rya.jpg',
//                   fit: BoxFit.fitHeight,
//                 ),
//               ),
//               Container(
//                 height: MediaQuery.of(context).size.height,
//                 child: Image.network(
//                   'https://images.tokopedia.net/img/cache/500-square/product-1/2019/1/20/5066051/5066051_4e3ddd14-3b37-46ba-918a-47afe07de5dc_1080_1080.jpg',
//                   fit: BoxFit.fitHeight,
//                 ),
//               ),
//             ],
//             enableSideReveal: true,
//             slideIconWidget: Icon(Icons.arrow_back),
//           ),
//         ),
//       ),
