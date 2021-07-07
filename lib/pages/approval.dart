import 'package:flutter/material.dart';

class ApprovalPage extends StatefulWidget {
  @override
  _ApprovalPageState createState() => _ApprovalPageState();
}

class _ApprovalPageState extends State<ApprovalPage> {
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
                "Approval",
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
                    "Approval                         :",
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                  child: Text(
                    "hmda Approval",
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1,
                        fontStyle: FontStyle.normal),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
