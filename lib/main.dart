import 'package:bca_notes_sem_one/login_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      // routes: {
      // "/home": (context) => LoginPage(),
      // "/home": (context) => HomePage(),
    );
  }
}
