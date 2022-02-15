// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Loginpge extends StatefulWidget {
  const Loginpge({Key? key}) : super(key: key);

  @override
  _LoginpgeState createState() => _LoginpgeState();
}

class _LoginpgeState extends State<Loginpge> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          children: [
            Text(
              "login",
              style: TextStyle(fontSize: 20, color: Colors.blue),
              textScaleFactor: 2,
            ),
          ],
        ),
      ),
    );
  }
}
