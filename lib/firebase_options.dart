// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDh7U2eC5se_WOnuGBDgWLe5qgAgiwFFnY',
    appId: '1:881381147826:web:0600fc3738d96ea8bef5ab',
    messagingSenderId: '881381147826',
    projectId: 'flutter-messageing-test-ekina',
    authDomain: 'flutter-messageing-test-ekina.firebaseapp.com',
    storageBucket: 'flutter-messageing-test-ekina.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHec-jXx5VEzxdKBb7L8ZeZoDslG2gs0g',
    appId: '1:881381147826:android:c467cb95d7f5de9abef5ab',
    messagingSenderId: '881381147826',
    projectId: 'flutter-messageing-test-ekina',
    storageBucket: 'flutter-messageing-test-ekina.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD-NIL9hda42YjZIa_8_0Hw3Rbsd0TusCE',
    appId: '1:881381147826:ios:32d5b3a7fe977ac6bef5ab',
    messagingSenderId: '881381147826',
    projectId: 'flutter-messageing-test-ekina',
    storageBucket: 'flutter-messageing-test-ekina.appspot.com',
    iosClientId: '881381147826-rnhii7b425umn71t3uh0cl4m7iggp703.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterTestProj',
  );
}
