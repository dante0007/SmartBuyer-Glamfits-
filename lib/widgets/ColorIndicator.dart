import 'package:flutter/material.dart';

class ColorIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            _buildIconPair(color: Colors.green,label: "Available"),
            _buildIconPair(color: Colors.red,label: "Booked"),
            _buildIconPair(color: Colors.blue, label: "In-Process"),
          ],
        )
      ],
    );
  }
  _buildIconPair({color, String? label}) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
          height: 12,
          width: 12,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        ),
        Text(
          label!,
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}