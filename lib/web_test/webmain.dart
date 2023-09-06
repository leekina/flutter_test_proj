import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class WebTest extends StatelessWidget {
  const WebTest({super.key});

  double getwidth(double currentwidth) {
    double zeroSeven = 1344;
    return currentwidth > zeroSeven ? 1344 : currentwidth;
  }

  Future<dynamic> setOverlay() async {
    await Future.delayed(Duration(seconds: 1));
    return Container(
      child: Text("Container"),
    );
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              // width: double.infinity,
              child: Container(color: Colors.red),
            ),
            Container(
              width: getwidth(Get.width),
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Text("${getwidth(Get.width)}"),
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
