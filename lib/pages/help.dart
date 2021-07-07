import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
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
                    "Help",
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1,
                        fontStyle: FontStyle.normal),
                  ),
                ])),
        body: Center(
            child: TextField(
          keyboardType: TextInputType.text,
          maxLines: 10,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            hintText: 'type something...',
            border: OutlineInputBorder(),
          ),
          onChanged: (text) => setState(() {}),
        )));
  }
}
