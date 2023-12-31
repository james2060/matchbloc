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
    apiKey: 'AIzaSyDRq6zf2v3KW4cHo9J8mouC82OARSRp9MU',
    appId: '1:452372668135:web:4e0c7d29d9e1239d244c42',
    messagingSenderId: '452372668135',
    projectId: 'matchbloc',
    authDomain: 'matchbloc.firebaseapp.com',
    storageBucket: 'matchbloc.appspot.com',
    measurementId: 'G-B9M58CRTQ9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAtK8a-YQrWyQnOSHYFeQ-sQ8-fnFV6QJ4',
    appId: '1:452372668135:android:3647fb077a070541244c42',
    messagingSenderId: '452372668135',
    projectId: 'matchbloc',
    storageBucket: 'matchbloc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBRLskQpVCfrtb9yIcirP-P8Co4gsEHSuU',
    appId: '1:452372668135:ios:610549253d391714244c42',
    messagingSenderId: '452372668135',
    projectId: 'matchbloc',
    storageBucket: 'matchbloc.appspot.com',
    iosClientId: '452372668135-dd0cjrphkprmv0h2t1vm05tbsog89r5l.apps.googleusercontent.com',
    iosBundleId: 'com.example.matchbloc',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBRLskQpVCfrtb9yIcirP-P8Co4gsEHSuU',
    appId: '1:452372668135:ios:ca92bb4963b92940244c42',
    messagingSenderId: '452372668135',
    projectId: 'matchbloc',
    storageBucket: 'matchbloc.appspot.com',
    iosClientId: '452372668135-0muqf4fu4hlddj2bauteavmv2c8vhr69.apps.googleusercontent.com',
    iosBundleId: 'com.example.matchbloc.RunnerTests',
  );
}
