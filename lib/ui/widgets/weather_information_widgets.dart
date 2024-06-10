import 'package:flutter/material.dart';

class WeatherInformationsWidgets extends StatelessWidget {
  const WeatherInformationsWidgets({
    super.key, this.icon, required this.title, required this.details,
  });

  final IconData? icon;
  final String title;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(height: 10,),
          Text(
            title,
            style: const TextStyle(
                fontSize: 16, color: Colors.white),
          ),
          const SizedBox(height: 6,),
          Text(
            details,
            style: const TextStyle(
                fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}