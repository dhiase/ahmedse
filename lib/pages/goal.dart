// ignore: unused_import
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:chips_choice/chips_choice.dart';

class loading extends StatefulWidget {
  const loading({super.key});

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  int tag = 1;
  List<String> option = [
    'Build Muscles',
    'keep fit',
    'losse Weight',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(26, 0, 0, 0),
                child: Text(
                  "What's your goal?",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(26, 0, 7, 0),
                child: Text(
                  "Choose your goal so we can",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(26, 0, 7, 0),
                child: Text(
                  "dicover more about what ",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(26, 0, 26, 0),
                child: Text(
                  "you want",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              ChipsChoice.single(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                direction: Axis.vertical,
                value: tag,
                onChanged: (value) => setState(() => tag = value),
                choiceItems: C2Choice.listFrom(
                  source: option,
                  value: (i, v) => i,
                  label: (i, v) => v,
                ),
                choiceCheckmark: true,
                choiceStyle: C2ChipStyle(
                  backgroundColor: const Color.fromARGB(255, 3, 103, 185),
                  checkmarkColor: const Color.fromARGB(255, 3, 103, 185),
                  checkmarkSize: 40,
                  foregroundStyle: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                  borderRadius: BorderRadius.circular(26),
                  height: 70,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
