// ignore: unused_import
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last

import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';

class sex extends StatefulWidget {
  const sex({super.key});

  @override
  State<sex> createState() => _sexState();
}

class _sexState extends State<sex> {
  PageController cont = PageController();
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: Text(
              "What's your gender ?",
              style: TextStyle(
                fontSize: 37,
                fontWeight: FontWeight.bold,
                fontFamily: 'Trajan Pro',
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            " Please choose your gender ",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            " so we can help you ",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            " reache your goals ",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 200,
              ),
              CustomRadioButton(
                customShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                elevation: 0,
                selectedBorderColor: Theme.of(context).colorScheme.onBackground,
                unSelectedBorderColor:
                    Theme.of(context).colorScheme.onBackground,
                buttonTextStyle: ButtonTextStyle(
                    textStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
                height: 160,
                width: 160,
                enableShape: true,
                buttonLables: [
                  "Male",
                  "Femal",
                ],
                buttonValues: [
                  Icon(
                    Icons.male,
                    color: Colors.white,
                  ),
                  Icon(Icons.female),
                ],
                radius: 30,
                unSelectedColor: Color.fromARGB(255, 182, 210, 234),
                selectedColor: const Color.fromARGB(255, 3, 103, 185),
                radioButtonValue: (Icon) {
                  print(Icon);
                },
              ),
            ],
          ),
          SizedBox(
            height: 160,
          ),
        ],
      ),
    );
  }
}
