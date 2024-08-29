import 'package:bloc/bloc.dart';
import 'package:firebase_auth_test/app.dart';
import 'package:firebase_auth_test/simple_bloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:user_repository/user_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDE0co56hHCOl_qD3qJ8kPeoGtN-m1K0Ow",
          appId: '1:541741530386:android:5257c41366185cd1db07cb',
          messagingSenderId: '541741530386',
          projectId: 'loginapp-674ae'));

  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp(FirebaseUserRepo()));
}
