import 'package:flutter/material.dart';

class Plotdetalis extends StatefulWidget {
  @override
  _PlotdetalisState createState() => _PlotdetalisState();
}

class _PlotdetalisState extends State<Plotdetalis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Plot Details",
              style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1,
                  fontStyle: FontStyle.normal),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "Block A",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "Plot Number           :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "01",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "Face and Distance  :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "East Face-100 mt",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "Total Area               :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "250sqft",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "Total Price              :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "50,00,000 \n (20,000 per sqft)",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "Photo                     :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "Optional",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ],
          ),
        ])));
  }
}