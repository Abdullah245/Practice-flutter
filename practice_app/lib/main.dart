import 'package:abcd/Pages/home.dart';
import 'package:abcd/Pages/login.dart';
import 'package:flutter/material.dart';

import 'Pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
