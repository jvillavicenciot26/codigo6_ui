import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  double radius;
  Color color;

  CircleWidget({required this.radius, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2,
      width: radius * 2,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
