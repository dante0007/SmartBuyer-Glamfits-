import 'package:flutter/material.dart';
import 'package:smartbuyer/Screens/dashboard.dart';
import 'package:smartbuyer/pages/booked.dart';
import 'package:smartbuyer/pages/plotdetalis.dart';

class ApplicationPage extends StatefulWidget {
  @override
  _ApplicationPageState createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
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
              "Application",
              style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1,
                  fontStyle: FontStyle.normal),
            ),
          ],
        ),
      ),
      body: Column(children: [ 
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "Name of the Venture  :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "Local Bazzar",
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
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "Area of the Venture    :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "Hyderabad",
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
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "Plot Number         :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "28",
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
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "Blue Print                  :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "Design",
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
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "Photo of site              :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "Image",
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
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "Price                         :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "100%",
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
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "Status                         :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                child: Text(
                  "Owned",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                  child: FlatButton(
                    onPressed: (){},
                    child: Text("Re-Sale"),
                  )
              ),
            ]),
      ]),
        );
  }
}
