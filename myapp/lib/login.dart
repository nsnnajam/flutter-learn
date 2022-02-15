// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/utili/myroutes.dart';

class Loginpge extends StatefulWidget {
  const Loginpge({Key? key}) : super(key: key);

  @override
  _LoginpgeState createState() => _LoginpgeState();
}

class _LoginpgeState extends State<Loginpge> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/login.png",
              fit: BoxFit.cover,
              height: 200,
            ),
            Text(
              "welcome",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "enter user name",
                      labelText: "user name",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "enter password",
                      labelText: "password",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Myroutes.homeroute);
                    },
                    child: Text("login"),
                    style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
