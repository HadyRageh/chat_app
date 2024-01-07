// ignore_for_file: prefer_const_constructors

import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/pages/RegisterPage.dart';
import 'package:chat_app/pages/chatPage.dart';
import 'package:chat_app/pages/loginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'LoginPage': (context) => LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
        ChatPage.id: (context) => ChatPage(),
      },
      title: 'Chat',
      initialRoute: 'LoginPage',
    );
  }
}
