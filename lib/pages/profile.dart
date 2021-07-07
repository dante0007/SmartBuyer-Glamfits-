import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ProfilePageState();
  }
}

class ProfilePageState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1,
              fontStyle: FontStyle.normal,
              color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(),
    );
  } }
