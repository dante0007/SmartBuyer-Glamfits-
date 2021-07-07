import 'package:flutter/material.dart';
import 'package:smartbuyer/Screens/dashboard.dart';
import 'package:smartbuyer/pages/details.dart';
import 'package:smartbuyer/pages/profile.dart';
import 'package:smartbuyer/pages/plot.dart';

class PromotionsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new PromotionsPageState();
  }
}

class PromotionsPageState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 15.0, top: 10.0),
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(top: 10.0)),
              Image.asset(
                'assets/images/layout2.png',
                width: 350,
                height: 250.0,
                fit: BoxFit.fill,
              ),
              Padding(padding: const EdgeInsets.only(top: 10.0, left: 10.0)),
              Column(
                children: [
                  Container(
                    child: Text(
                      "Re-Sale",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Card(
                        child: Column(
                          children: [
                            Image.asset("assets/images/house.jpg",
                                width: 50, height: 50.0, fit: BoxFit.fill),
                            Text("yacharum"),
                            SizedBox(
                              width: 80.0,
                              child: RaisedButton(
                                  child: Text("Book"),
                                  textColor: Colors.white,
                                  color: Colors.deepOrange,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailsPage()),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          children: [
                            Image.asset("assets/images/home1.jpg",
                                width: 50, height: 50.0, fit: BoxFit.fill),
                            Text("yacharum"),
                            SizedBox(
                              width: 80.0,
                              child: RaisedButton(
                                  child: Text("Book"),
                                  textColor: Colors.white,
                                  color: Colors.deepOrange,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailsPage()),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          children: [
                            Image.asset("assets/images/home2.jpg",
                                width: 50, height: 50.0, fit: BoxFit.fill),
                            Text("yacharum"),
                            SizedBox(
                              width: 80.0,
                              child: RaisedButton(
                                  child: Text("Book"),
                                  textColor: Colors.white,
                                  color: Colors.deepOrange,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailsPage()),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          children: [
                            Image.asset("assets/images/home3.jpg",
                                width: 50, height: 50.0, fit: BoxFit.fill),
                            Text("yacharum"),
                            SizedBox(
                              width: 80.0,
                              child: RaisedButton(
                                  child: Text("Book"),
                                  textColor: Colors.white,
                                  color: Colors.deepOrange,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailsPage()),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Padding(padding: const EdgeInsets.only(top: 10.0)),
              Image.asset('assets/images/layout1.png',
                  width: 350, height: 250.0, fit: BoxFit.fill),
            ],
          ),
        ),
      ),
    );
  }
}
