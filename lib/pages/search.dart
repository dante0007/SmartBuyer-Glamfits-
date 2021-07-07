import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: TextFormField(
        decoration: const InputDecoration(
          icon: const Icon(Icons.search),
          hintText: 'Text what you need',
          labelText: 'search',
        ),
      ),
    );
  }
}
