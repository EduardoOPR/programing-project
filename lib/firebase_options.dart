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
    apiKey: 'AIzaSyDRADah7aw4HhLwNlfO4E-4sZ2sMrEnAH8',
    appId: '1:785064073:web:d011e64f4f7f1bd7052658',
    messagingSenderId: '785064073',
    projectId: 'progaming-tccapp',
    authDomain: 'progaming-tccapp.firebaseapp.com',
    storageBucket: 'progaming-tccapp.appspot.com',
    measurementId: 'G-W0PEEW1HWJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDbcb5e4X3A37bhVMTPoluAxdxJvj8_7sw',
    appId: '1:785064073:android:66b50b0c28fd08e6052658',
    messagingSenderId: '785064073',
    projectId: 'progaming-tccapp',
    storageBucket: 'progaming-tccapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAyWcGNNf58TZvA-tJfEgHYLtDg7r5ymd4',
    appId: '1:785064073:ios:44fef29d964fbca1052658',
    messagingSenderId: '785064073',
    projectId: 'progaming-tccapp',
    storageBucket: 'progaming-tccapp.appspot.com',
    iosBundleId: 'com.example.progaming',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAyWcGNNf58TZvA-tJfEgHYLtDg7r5ymd4',
    appId: '1:785064073:ios:a997d045c2690c93052658',
    messagingSenderId: '785064073',
    projectId: 'progaming-tccapp',
    storageBucket: 'progaming-tccapp.appspot.com',
    iosBundleId: 'com.example.progaming.RunnerTests',
  );
}