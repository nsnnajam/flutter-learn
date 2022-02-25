// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/utili/myroutes.dart';

class Loginpge extends StatefulWidget {
  const Loginpge({Key? key}) : super(key: key);

  @override
  _LoginpgeState createState() => _LoginpgeState();
}

class _LoginpgeState extends State<Loginpge> {
  String name = "";
  bool changebutton = false;

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
              "welcome $name",
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
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(style: BorderStyle.solid)),
                      hintText: "enter user name",
                      labelText: "user name",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(style: BorderStyle.solid)),
                      hintText: "enter password",
                      labelText: "password",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, Myroutes.homeroute);
                  //   },
                  //   child: Text("login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                  // )
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changebutton = true;
                      });
                      await Future.delayed(Duration(seconds: 2));
                      Navigator.pushNamed(context, Myroutes.homeroute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      height: 50,
                      width: changebutton ? 50 : 150,
                      alignment: Alignment.center,
                      child: changebutton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              "login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: changebutton
                              ? BoxShape.circle
                              : BoxShape.rectangle
                          // borderRadius: BorderRadius.circular(10),
                          ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
