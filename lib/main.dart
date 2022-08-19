// ignore_for_file: sort_child_properties_last, avoid_unnecessary_containers, prefer_const_constructors

import 'package:app_routing/pages/signup.dart';
import 'package:app_routing/pages/welcome.dart';
import 'package:app_routing/pages/login.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: '/',
         routes: {
    '/': (context) => const Welcome(),
    '/login': (context) => const Login(),
    '/signup': (context) => const Signup(),

  },

    );
  }
}



