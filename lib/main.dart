import 'package:flutter/material.dart';
import 'package:flutter_test_proj/flutter_video/flutter_video_test.dart';
import 'package:flutter_test_proj/getx_with_progress_indicator/home_view.dart';
import 'package:flutter_test_proj/getx_with_progress_indicator/indicator_with_state.dart';
import 'package:flutter_test_proj/qr_code/permission.dart';
import 'package:flutter_test_proj/shared_preferences/shared.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import 'overlay_test/main_page.dart';
import 'qr_code/qr_scan.dart';
import 'svg_test/svg_test_main.dart';
import 'web_test/webmain.dart';
import 'webview/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: EasyOverlay(
        title: "title",
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           child: Text("Go To"),
//           onPressed: () async {
//             var temp =
//                 await PermissionManage().requestCameraPermission(context);
//             print(temp);
//             if (temp == true) {
//               Get.to(() => QRViewExample());
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
