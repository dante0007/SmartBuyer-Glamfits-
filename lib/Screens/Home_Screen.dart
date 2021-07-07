import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:smartbuyer/Screens/dashboard.dart';
import 'package:smartbuyer/pages/application.dart';
import 'package:smartbuyer/pages/approval.dart';
import 'package:smartbuyer/pages/bell.dart';
import 'package:smartbuyer/pages/chat.dart';
import 'package:smartbuyer/pages/details.dart';
import 'package:smartbuyer/pages/message.dart';
import 'package:smartbuyer/pages/payment.dart';
import 'package:smartbuyer/pages/plot.dart';
import 'package:smartbuyer/pages/promotions.dart';
import 'package:smartbuyer/pages/search.dart';
import 'package:smartbuyer/widgets/navigationdrawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text("Buyer"),
        centerTitle: true,
        backgroundColor: Colors.black54,
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()),
                );
              }),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Bell()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 230,
              child: Carousel(
                overlayShadowColors: Colors.white,
                overlayShadowSize: 0.7,
                overlayShadow: true,
                borderRadius: true,
                boxFit: BoxFit.cover,
                autoplay: true,
                animationCurve: Curves.ease,
                animationDuration: Duration(milliseconds: 3000),
                dotSize: 8.0,
                dotIncreasedColor: Colors.white,
                dotBgColor: Colors.transparent,
                dotPosition: DotPosition.bottomCenter,
                dotVerticalPadding: 10.0,
                showIndicator: true,
                indicatorBgPadding: 0,
                images: [
                  AssetImage(
                    'assets/images/layout1.jpg',
                  ),
                  AssetImage('assets/images/layout.jpg'),
                  AssetImage('assets/images/layout2.jpg'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'DASHBOARD',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 30, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PlotPage()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.black87),
                            image: DecorationImage(
                                image: AssetImage('assets/images/plots.jpg'),
                                fit: BoxFit.cover),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Plots',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaymentPage()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.black87),
                            image: DecorationImage(
                                image: AssetImage('assets/images/payments.jpg'),
                                fit: BoxFit.cover),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Payments',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsPage()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 10.0,
                          ),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.black87),
                            image: DecorationImage(
                                image: AssetImage('assets/images/details.jpg'),
                                fit: BoxFit.cover),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Details',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ApplicationPage()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 10.0,
                          ),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.black87),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/applications.jpg'),
                                fit: BoxFit.cover),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Application',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ApprovalPage()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 10.0,
                          ),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.black87),
                            image: DecorationImage(
                                image: AssetImage('assets/images/approval.jpg'),
                                fit: BoxFit.cover),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Approval',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        height: 150,
                        width: 150,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            '',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'RESALE',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: resaleplots.length,
                  itemBuilder: (BuildContext context, index) {
                    ResalePlots resalePlots = resaleplots[index];
                    return Container(
                      height: 200,
                      width: 390,
                      margin: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(resalePlots.imageurl!),
                          fit: BoxFit.cover,
                          colorFilter: new ColorFilter.mode(
                              Colors.black.withOpacity(0.8),
                              BlendMode.softLight),
                        ),
                        border: Border.all(
                          color: Colors.black87,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.white,
                            Colors.black,
                          ],
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 5.0),
                        child: MaterialButton(
                          elevation: 10,
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          onPressed: () {},
                          child: Text('Book Now'),
                          color: Colors.green,
                          textColor: Colors.white,
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  List<ResalePlots> resaleplots = [
    ResalePlots(imageurl: 'assets/images/home1.jpg'),
    ResalePlots(
      imageurl: 'assets/images/home2.jpg',
    ),
    ResalePlots(
      imageurl: 'assets/images/home3.jpg',
    ),
    ResalePlots(
      imageurl: 'assets/images/house.jpg',
    ),
  ];
}

class ResalePlots {
  final String? imageurl;

  ResalePlots({this.imageurl});
}
