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
    apiKey: 'AIzaSyAoEWiaMqU1ka-Px_elGi7y1An4w-AwC1E',
    appId: '1:927012556528:web:d61762b2c4b1b1b07e7c35',
    messagingSenderId: '927012556528',
    projectId: 'education-app-8d5b1',
    authDomain: 'education-app-8d5b1.firebaseapp.com',
    storageBucket: 'education-app-8d5b1.appspot.com',
    measurementId: 'G-RYTQQJNT6B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCWzuQTrwAMWl2zEybCAUE2TbQXSzx8S_8',
    appId: '1:927012556528:android:8a472e806b56f5067e7c35',
    messagingSenderId: '927012556528',
    projectId: 'education-app-8d5b1',
    storageBucket: 'education-app-8d5b1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyASB5yB534VFcMfcD89M1QhPs8XMfV5N0I',
    appId: '1:927012556528:ios:20bc8feb9bbfde447e7c35',
    messagingSenderId: '927012556528',
    projectId: 'education-app-8d5b1',
    storageBucket: 'education-app-8d5b1.appspot.com',
    iosClientId: '927012556528-oe9vas1n5v61pmjflq56a7u4ealmt2p0.apps.googleusercontent.com',
    iosBundleId: 'com.example.education',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyASB5yB534VFcMfcD89M1QhPs8XMfV5N0I',
    appId: '1:927012556528:ios:d446c0a7ea2a8ce07e7c35',
    messagingSenderId: '927012556528',
    projectId: 'education-app-8d5b1',
    storageBucket: 'education-app-8d5b1.appspot.com',
    iosClientId: '927012556528-2lqag925rfe4giki5bt8bt9egktgc9ui.apps.googleusercontent.com',
    iosBundleId: 'com.example.education.RunnerTests',
  );
}