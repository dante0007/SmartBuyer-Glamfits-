import 'package:flutter/material.dart';
import 'package:smartbuyer/Screens/Home_Screen.dart';
import 'package:smartbuyer/Screens/Login_Screen.dart';
import 'package:smartbuyer/pages/about.dart';
import 'package:smartbuyer/pages/booked.dart';
import 'package:smartbuyer/pages/downloads.dart';
import 'package:smartbuyer/pages/help.dart';
import 'package:smartbuyer/pages/profile.dart';
import 'package:smartbuyer/pages/settings.dart';
import 'package:smartbuyer/pages/plot.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        createDrawerheader(context),
        SizedBox(
          height: 10.0,
        ),
        InkWell(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 40,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image(
                        image: AssetImage('assets/images/homes.jpg'),
                        height: 20,
                        width: 20),
                    new Padding(
                      padding: EdgeInsets.only(left: 15.0),
                    ),
                    new Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            }),
        InkWell(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 40,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image(
                        image: AssetImage('assets/images/my plot.png'),
                        height: 20,
                        width: 20),
                    new Padding(
                      padding: EdgeInsets.only(left: 15.0),
                    ),
                    new Text(
                      "My Plots",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlotPage()),
              );
            }),
        InkWell(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 40,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image(
                        image: AssetImage('assets/images/process.png'),
                        height: 20,
                        width: 20),
                    new Padding(
                      padding: EdgeInsets.only(left: 15.0),
                    ),
                    new Text(
                      "Booked/Process",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookedPage()),
              );
            }),
        Divider(
          thickness: 1.0,
        ),
        InkWell(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 40,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image(
                        image: AssetImage('assets/images/settings.jpg'),
                        height: 20,
                        width: 20),
                    new Padding(
                      padding: EdgeInsets.only(left: 15.0),
                    ),
                    new Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            }),
        InkWell(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 40,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image(
                        image: AssetImage('assets/images/about.jpg'),
                        height: 20,
                        width: 20),
                    new Padding(
                      padding: EdgeInsets.only(left: 15.0),
                    ),
                    new Text(
                      "About",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutPage()),
              );
            }),
        InkWell(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 40,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image(
                        image: AssetImage('assets/images/help.jpg'),
                        height: 20,
                        width: 20),
                    new Padding(
                      padding: EdgeInsets.only(left: 15.0),
                    ),
                    new Text(
                      "Help",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpPage()),
              );
            }),
        Divider(
          thickness: 1.0,
        ),
        InkWell(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 40,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image(
                        image: AssetImage('assets/images/download.jpg'),
                        height: 20,
                        width: 20),
                    new Padding(
                      padding: EdgeInsets.only(left: 15.0),
                    ),
                    new Text(
                      "Downloads",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DownloadsPage()),
              );
            }),
        ListTile(
          title: Row(
            children: <Widget>[
              Icon(
                Icons.logout,
                color: Colors.black54,
                size: 30.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Logout",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          onTap: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => LoginScreen()),
                (route) => false);
          },
        ),
        Divider(thickness: 1),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "App Version : ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "1.0.0",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Widget createDrawerheader(context) {
    return DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.black54,
      ),
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              child: Image.network(
                'assets/images/buyer2.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Hi..User',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 5.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              child: Text(
                'Edit Profile',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
