import 'package:flutter/material.dart';
import 'package:smartbuyer/Screens/dashboard.dart';
import 'package:smartbuyer/pages/booked.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
                "Payment",
                style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1,
                    fontStyle: FontStyle.normal),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 10.0),
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
                  "North Face-100 mt",
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
                  "300sqft",
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
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "Payment                 :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "Term 1. 30% \n paid 8-8-2020",
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
                padding: const EdgeInsets.only(top: 10.0, left: 170.0),
                child: Text(
                  ":  Term 2. 30% \n paid 17-8-2020",
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
                padding: const EdgeInsets.only(top: 10.0, left: 170.0),
                child: Text(
                  ":  Term 3. 20%\n due 25-8-2020",
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
                padding: const EdgeInsets.only(top: 10.0, left: 170.0),
                child: Text(
                  ":  Term 4. 20% \n due 31-8-2020",
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
                  "paid                        :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "60%",
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
                  "Due                        :",
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "40%",
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
