import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smartbuyer/Screens/Login_Screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
              ),
              Text(
                "Buyer",
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
              Image(image: AssetImage('assets/images/buyer.png')),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
              ),
              Text(
                "Powered by",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
              ),
              Text(
                "GLAM FITS",
                style: TextStyle(fontSize: 17, color: Colors.red),
              ),
            ],
          ),
        ));
  }
}
