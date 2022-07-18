import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kareem/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';
import 'loginPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  
  var email = prefs.getString('email');
  var password = prefs.getString('password');
  print(email);
  print(password);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: email == null || password == null ? SignIn() : Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
