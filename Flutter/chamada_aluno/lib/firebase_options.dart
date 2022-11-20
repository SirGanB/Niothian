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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCfGZfMN8re53bwZBiZFSXHgg1fgw0VirY',
    appId: '1:64467653858:web:3e63f14bed1d7a0429babb',
    messagingSenderId: '64467653858',
    projectId: 'chamada-aluno-361022',
    authDomain: 'chamada-aluno-361022.firebaseapp.com',
    storageBucket: 'chamada-aluno-361022.appspot.com',
    measurementId: 'G-VCF48W65N0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB-rOA1EMDar8sllg5v-mknSkLkeUB4EKM',
    appId: '1:64467653858:android:c47212e8ad55f70d29babb',
    messagingSenderId: '64467653858',
    projectId: 'chamada-aluno-361022',
    storageBucket: 'chamada-aluno-361022.appspot.com',
  );
}