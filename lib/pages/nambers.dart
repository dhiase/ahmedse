// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class numbers extends StatelessWidget {
  int number;
  numbers({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 70,
      child: Text(
        number.toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
