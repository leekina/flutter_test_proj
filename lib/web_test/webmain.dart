import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WebTest extends StatelessWidget {
  const WebTest({super.key});

  double getwidth(double currentwidth) {
    double zeroSeven = 1344;
    return currentwidth > zeroSeven ? 1344 : currentwidth;
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      body: Column(
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
    );
  }
}
