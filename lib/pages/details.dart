import 'package:flutter/material.dart';
import 'package:smartbuyer/Screens/dashboard.dart';
import 'package:smartbuyer/pages/booked.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Details",
              style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1,
                  fontStyle: FontStyle.normal),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/plot image.png"),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "Linked Document                         :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "pdf Files",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
