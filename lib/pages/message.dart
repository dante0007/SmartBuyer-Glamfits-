import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Chat",
          style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1,
              fontStyle: FontStyle.normal,
              color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 45,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: TextFormField(
            decoration: new InputDecoration(
              hintText: 'Write....',
              suffixIcon: Icon(Icons.send)
            ),
          ),
        ),
      ),
    );
  }
}