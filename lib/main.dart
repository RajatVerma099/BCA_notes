import 'package:bca_notes_sem_one/login_page.dart';
import 'package:bca_notes_sem_one/util/routes.dart';
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
      //   home: LoginPage(),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        // "/home": (context) => LoginPage(),
        // "/home": (context) => HomePage(),
        //MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}
