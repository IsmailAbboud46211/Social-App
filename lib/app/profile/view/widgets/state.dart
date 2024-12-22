import 'package:flutter/material.dart';

class Stat extends StatelessWidget {
  final String name;
  final int number;
  const Stat({super.key, required this.name, required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Text(
          number.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
