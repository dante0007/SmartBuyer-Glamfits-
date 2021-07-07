import 'package:flutter/material.dart';

class BookedPage extends StatefulWidget {
  @override
  _BookedPageState createState() => _BookedPageState();
}

class _BookedPageState extends State<BookedPage> {
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
                "Booked/Process",
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
                padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                child: Text(
                  " Venture                  :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "Glamfits",
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
                  " Plot No                  :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "3-72",
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
                  " Face                      :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "South",
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
                  " Plot Cast                :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "20,000",
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
                  " Amount Paid          :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "5,000",
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
                  " Amount Due           :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "15,000",
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
                  " Last Amount Paid    :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "16-4-2021",
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
                  " Next Amount Paid   :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "30-4-2021",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ],
          ),
        ]));
  }
}
