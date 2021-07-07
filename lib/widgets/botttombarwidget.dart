import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  final Function onTap;
  final String? text;
  // ignore: use_key_in_widget_constructors
  const BottomBarWidget(
      {required this.onTap, this.text,});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        child: Center(
          child: Text(
            text!.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        color: Colors.black54,
        height: 60.0,
      ),
    );
  }
}
