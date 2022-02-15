// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/login.dart';
import 'package:myapp/pages/homepage.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        "/": (context) => Loginpge(),
        "/home": (context) => Homepage(),
        "/login": (context) => Loginpge(),
      },
    );
  }
}
