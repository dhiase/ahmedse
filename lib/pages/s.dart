// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class dh extends StatefulWidget {
  const dh({super.key});

  @override
  State<dh> createState() => _dhState();
}

class _dhState extends State<dh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          CircleAvatar(
            radius: 65,
            backgroundImage: AssetImage('ahme/coache.jpg'),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 0, 15, 0),
            child: Text(
              "Wait so we can upload your information",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Center(
            child: CircularPercentIndicator(
              animation: true,
              animationDuration: 6000,
              radius: 160,
              lineWidth: 20,
              percent: 1,
              progressColor: const Color.fromARGB(255, 3, 103, 185),
              backgroundColor: Color.fromARGB(255, 116, 131, 142),
              circularStrokeCap: CircularStrokeCap.round,
              onAnimationEnd: () {
                Navigator.pushNamed(context, 'as');
              },
            ),
          ),
        ],
      ),
    );
  }
}
