import 'package:flutter/material.dart';

import 'package:flutter_learn/pages/login_page.dart';
import 'package:flutter_learn/pages/main_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_learn/pages/splash_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: Splash(),
    );
  }
}
