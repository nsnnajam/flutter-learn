import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    int num = 30;
    String name = "najam";

    return Scaffold(
      appBar: AppBar(
        title: Text("catalog app"),
      ),
      body: Center(
        child: Container(
          color: Colors.amber,
          child: Text("this $num days of flutter by. $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
