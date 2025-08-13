import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';
import 'package:shop_advanced_graphql/core/app/bloc_observer.dart';
import 'package:shop_advanced_graphql/mena_store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: 'AIzaSyDCj-JLrlwYA3Ft5vT8NgQsAfmaXfq6tQo',
            appId: '1:314002569440:android:7d4845749d21f1e7cdb885',
            messagingSenderId: '314002569440',
            projectId: 'menastore-916ff',
          ),
        )
      : await Firebase.initializeApp();

      Bloc.observer = AppBlocObserver();

  // ignore: lines_longer_than_80_chars
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],).then((_) {
    runApp(const MenaStoreApp());
  });
}


