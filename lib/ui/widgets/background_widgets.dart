import 'package:flutter/material.dart';

class BackGroundWidgets extends StatelessWidget {
  const BackGroundWidgets({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.grey], // Shades of black gradient
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        child
      ],
    );
  }
}