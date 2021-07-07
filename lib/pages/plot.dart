import 'package:flutter/material.dart';
import 'package:smartbuyer/Screens/Home_Screen.dart';
import 'package:smartbuyer/Screens/dashboard.dart';
import 'package:smartbuyer/constants.dart';
import 'package:smartbuyer/pages/booked.dart';
import 'package:smartbuyer/pages/plotdetalis.dart';
import 'package:smartbuyer/widgets/ColorIndicator.dart';

class PlotPage extends StatefulWidget {
  @override
  _PlotPageState createState() => _PlotPageState();
}

class _PlotPageState extends State<PlotPage> {
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
              "Plot",
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
          Container(
            child: Expanded(
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) {
                            return PlotsView();
                          },
                        ),
                      );
                    },
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image(
                                image: AssetImage('assets/images/venture.jpeg'),
                                height: 250.0,
                                width: 400.0,
                                fit: BoxFit.fill),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Text('Venture : Venus Venture'),
                          Text('Area : Hyderabad'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Plots : 40'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlotsView extends StatefulWidget {
  @override
  _PlotsViewState createState() => _PlotsViewState();
}

class _PlotsViewState extends State<PlotsView> {
  int selectPlots = 0;

  Color? getColor(int value) {
    if (value == Constants.plotAvailabel) return Colors.green;
    if (value == Constants.plotBooked) return Colors.red;
    if (value == Constants.plotInprocess) return Colors.blue;
  }

  String? getStatus(int value) {
    if (value == Constants.plotAvailabel) return 'Available';
    if (value == Constants.plotBooked) return 'Booked';
    if (value == Constants.plotInprocess) return 'In-Process';
  }

  String? getFacing(int value) {
    if (value == Constants.plotAvailabel) return 'East-facing';
    if (value == Constants.plotBooked) return 'West-facing';
    if (value == Constants.plotInprocess) return 'North Facing';
  }

  String? getArea(int value) {
    if (value == Constants.plotAvailabel) return '200 sqft';
    if (value == Constants.plotBooked) return '300 sqft';
    if (value == Constants.plotInprocess) return '500 sqft';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: true,
        title: Text(
          'Plots',
          style: TextStyle(fontSize: 16.0, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          children: [
            ColorIndicatorWidget(),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: plots.map((e) {
                  return Card(
                    elevation: (this.selectPlots == e.value) ? 16 : 0,
                    color: getColor(e.status!),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Container(
                      width: 200,
                      height: 200,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16.0),
                        onTap: () {
                          if (this.selectPlots == e.value) {
                            return;
                          }
                          this.selectPlots = e.value!;
                          this.setState(() {});
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(
                                  e.label!,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                content: Container(
                                  height: 100,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Status Of The Plot :${getStatus(e.status!)}",
                                      ),
                                      Text(
                                          "Area Of The Plot : ${getArea(e.status!)}"),
                                      Text(
                                          "Facing Of The Plot : ${getFacing(e.status!)}"),
                                      Text("Price : 100% ")
                                    ],
                                  ),
                                ),
                                actions: [
                                if(Constants.plotAvailabel == e.status)
                                  RaisedButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => HomeScreen()),
                                          (route) => false);
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text("Booking Succesfull"),
                                              content: Text(
                                                  'Your ${e.label}has been booked succesfully your application will be reviewd shortly.\nThankyou'),
                                              actions: [
                                                // ignore: deprecated_member_use
                                                RaisedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text('Okay'),
                                                )
                                              ],
                                            );
                                          });
                                    },
                                    child: Text(
                                      "Book Now",
                                    ),
                                    textColor: Colors.white,
                                  )
                                ],
                              );
                            },
                          );
                        },
                        child: Center(
                          child: Text(
                            e.label!,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: (this.selectPlots == e.value)
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }


  List<Plots> plots = [
    Plots(label: "Plots 1", value: 1, status: 1),
    Plots(label: "Plots 2", value: 2, status: 1),
    Plots(label: "Plots 3", value: 3, status: 1),
    Plots(label: "Plots 4", value: 4, status: 1),
    Plots(label: "Plots 5", value: 5, status: 2),
    Plots(label: "Plots 6", value: 6, status: 3),
    Plots(label: "Plots 7", value: 7, status: 2),
    Plots(label: "Plots 8", value: 8, status: 3),
    Plots(label: "Plots 9", value: 9, status: 3),
    Plots(label: "Plots 10", value: 10, status: 3),
    Plots(label: "Plots 11", value: 11, status: 3),
    Plots(label: "Plots 12", value: 12, status: 3),
    Plots(label: "Plots 13", value: 13, status: 3),
    Plots(label: "Plots 14", value: 14, status: 3),
    Plots(label: "Plots 15", value: 15, status: 3),
    Plots(label: "Plots 16", value: 16, status: 1),
    Plots(label: "Plots 17", value: 17, status: 1),
    Plots(label: "Plots 18", value: 18, status: 1),
    Plots(label: "Plots 19", value: 19, status: 1),
    Plots(label: "Plots 20", value: 20, status: 2),
    Plots(label: "Plots 21", value: 21, status: 3),
    Plots(label: "Plots 22", value: 22, status: 2),
    Plots(label: "Plots 23", value: 23, status: 3),
    Plots(label: "Plots 24", value: 24, status: 3),
    Plots(label: "Plots 25", value: 25, status: 3),
    Plots(label: "Plots 26", value: 26, status: 3),
    Plots(label: "Plots 27", value: 27, status: 3),
    Plots(label: "Plots 28", value: 28, status: 3),
    Plots(label: "Plots 29", value: 29, status: 3),
    Plots(label: "Plots 30", value: 30, status: 3),
    Plots(label: "Plots 31", value: 31, status: 1),
    Plots(label: "Plots 32", value: 32, status: 1),
    Plots(label: "Plots 33", value: 33, status: 1),
    Plots(label: "Plots 34", value: 34, status: 1),
    Plots(label: "Plots 35", value: 35, status: 2),
    Plots(label: "Plots 36", value: 36, status: 3),
    Plots(label: "Plots 37", value: 37, status: 2),
    Plots(label: "Plots 38", value: 38, status: 3),
    Plots(label: "Plots 39", value: 39, status: 3),
    Plots(label: "Plots 40", value: 40, status: 3),
  ];
}

class Plots {
  final String? label;
  final int? value;
  final int? status;

  Plots({this.label, this.value, this.status});
}
