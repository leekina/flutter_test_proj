import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'overlay_example.dart';

class EasyOverlay extends StatefulWidget {
  EasyOverlay({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<EasyOverlay> createState() => _EasyOverlayState();
}

class _EasyOverlayState extends State<EasyOverlay> {
  final OverlayExample _example = OverlayExample();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseMessaging.instance.requestPermission(
      badge: true,
      alert: true,
      sound: true,
    );
    FirebaseMessaging.onMessage.listen((RemoteMessage? message) {
      if (message != null) {
        if (message.notification != null) {
          print(message.notification!.title);
          print(message.notification!.body);
          print(message.data["click_action"]);
        }
      }
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage? message) {
      if (message != null) {
        if (message.notification != null) {
          print(message.notification!.title);
          print(message.notification!.body);
          print(message.data["click_action"]);
        }
      }
    });
    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) {
      if (message != null) {
        if (message.notification != null) {
          print(message.notification!.title);
          print(message.notification!.body);
          print(message.data["click_action"]);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _example.context = context;
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              ElevatedButton(
                  onPressed: _example.showAlert, child: Text('Show alert')),
              ElevatedButton(onPressed: _example.toast, child: Text('Toast'))
            ])));
  }
}
