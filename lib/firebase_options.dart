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
        return macos;
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
    apiKey: 'AIzaSyAkSuVr8OTO-JYGygzeBQSX8_KfU-VYaT4',
    appId: '1:91721137584:web:99512fd8500f1279096a75',
    messagingSenderId: '91721137584',
    projectId: 'chat-app-5e4e4',
    authDomain: 'chat-app-5e4e4.firebaseapp.com',
    storageBucket: 'chat-app-5e4e4.appspot.com',
    measurementId: 'G-G0RYDQ87QT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCFr7PgRj-VdzslQCar1STrDHsinrLtZfQ',
    appId: '1:91721137584:android:94691adb040b35d5096a75',
    messagingSenderId: '91721137584',
    projectId: 'chat-app-5e4e4',
    storageBucket: 'chat-app-5e4e4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB6sHzblhll2kouhgKfpHwSex1eYtvs0xo',
    appId: '1:91721137584:ios:3ac50b5d0f4938ec096a75',
    messagingSenderId: '91721137584',
    projectId: 'chat-app-5e4e4',
    storageBucket: 'chat-app-5e4e4.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB6sHzblhll2kouhgKfpHwSex1eYtvs0xo',
    appId: '1:91721137584:ios:387e036626ded980096a75',
    messagingSenderId: '91721137584',
    projectId: 'chat-app-5e4e4',
    storageBucket: 'chat-app-5e4e4.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}