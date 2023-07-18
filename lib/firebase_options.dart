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
    apiKey: 'AIzaSyDWSrFeUuKL-s-H5GPFcD-i2dkfEsDwWLg',
    appId: '1:905691047508:web:ce121681fb99bdd4f1afc1',
    messagingSenderId: '905691047508',
    projectId: 'vgfluttertemplate',
    authDomain: 'vgfluttertemplate.firebaseapp.com',
    storageBucket: 'vgfluttertemplate.appspot.com',
    measurementId: 'G-KX3K6DDTDS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCCK-GpxwGnjnoCFEvWJrhBwEbPvqT1SRo',
    appId: '1:905691047508:android:317b99da15ea184af1afc1',
    messagingSenderId: '905691047508',
    projectId: 'vgfluttertemplate',
    storageBucket: 'vgfluttertemplate.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDaZX-ebSVeHPOLzE59eofHuzG74cEZoUE',
    appId: '1:905691047508:ios:77d6c774a11dc7cbf1afc1',
    messagingSenderId: '905691047508',
    projectId: 'vgfluttertemplate',
    storageBucket: 'vgfluttertemplate.appspot.com',
    iosClientId: '905691047508-jie635t5a2rg4bo2afv7e1hvi8fshmsl.apps.googleusercontent.com',
    iosBundleId: 'com.example.verygoodcore.vg-flutter-template',
  );
}
