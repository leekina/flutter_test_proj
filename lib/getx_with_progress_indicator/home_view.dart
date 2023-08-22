import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading Button Indicator'),
        centerTitle: true,
      ),
      body: Center(
          child: Obx(
        () => ElevatedButton.icon(
          onPressed:
              controller.isLoading.value ? null : () => controller.uploadFile(),
          icon: controller.isLoading.value
              ? CircularProgressIndicator()
              : Icon(Icons.upload),
          label: Text(controller.isLoading.value ? "processing" : "upload"),
        ),
      )),
    );
  }
}
