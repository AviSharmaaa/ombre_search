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
    apiKey: 'AIzaSyCBr2t8dHHPTz8a3tovl8u94wmAbTBq6N8',
    appId: '1:419763301828:web:56582d00a531f69ead8891',
    messagingSenderId: '419763301828',
    projectId: 'ombre-search-1dffb',
    authDomain: 'ombre-search-1dffb.firebaseapp.com',
    storageBucket: 'ombre-search-1dffb.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCyCIXMGbL6ekA8EjZqvjrVJvHnF3sDBGs',
    appId: '1:419763301828:android:c08e059a99528139ad8891',
    messagingSenderId: '419763301828',
    projectId: 'ombre-search-1dffb',
    storageBucket: 'ombre-search-1dffb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA8FygztaceZyeP1-uHgYA5d782JrIxyhk',
    appId: '1:419763301828:ios:eeb0ee9c5a3c97edad8891',
    messagingSenderId: '419763301828',
    projectId: 'ombre-search-1dffb',
    storageBucket: 'ombre-search-1dffb.appspot.com',
    iosClientId: '419763301828-gpqn8p83nub5hpjg3f5f20m4eat3tmcg.apps.googleusercontent.com',
    iosBundleId: 'com.example.ombreSearch',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA8FygztaceZyeP1-uHgYA5d782JrIxyhk',
    appId: '1:419763301828:ios:eeb0ee9c5a3c97edad8891',
    messagingSenderId: '419763301828',
    projectId: 'ombre-search-1dffb',
    storageBucket: 'ombre-search-1dffb.appspot.com',
    iosClientId: '419763301828-gpqn8p83nub5hpjg3f5f20m4eat3tmcg.apps.googleusercontent.com',
    iosBundleId: 'com.example.ombreSearch',
  );
}
