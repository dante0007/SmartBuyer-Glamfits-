// TODO Implement this library.import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
              "Settings",
              style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1,
                  fontStyle: FontStyle.normal),
            ),
          ],
        ),
      ),
    );
  }
}
