// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class home1 extends StatefulWidget {
  const home1({super.key});

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: ListView(children: [
        Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 150, 0),
              child: Text(
                "Train with us",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 90, 0),
              child: Text(
                "For Better Body",
                style: TextStyle(
                  color: const Color.fromARGB(255, 3, 103, 185),
                  fontSize: 42,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 3, 103, 185),
                  borderRadius: BorderRadius.circular(23),
                  image: DecorationImage(
                      image: AssetImage('ahme/de.jpg'), fit: BoxFit.cover),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            " Full Body",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            " Worout X3",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'full');
                            },
                            child: Text(
                              "Start now",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 3, 59, 105),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 56,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 130,
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 3, 103, 185),
                borderRadius: BorderRadius.circular(26),
                image: DecorationImage(
                    image: AssetImage('ahme/dhia.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 190, 0),
                  child: Column(
                    children: [
                      Text(
                        " Arms",
                        style: TextStyle(
                          fontSize: 43,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'arms');
                        },
                        child: Text(
                          " Start ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 3, 59, 105),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 130,
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 3, 103, 185),
                borderRadius: BorderRadius.circular(26),
                image: DecorationImage(
                    image: AssetImage('ahme/chest.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 190, 0),
                child: Column(
                  children: [
                    Text(
                      " Chest",
                      style: TextStyle(
                        fontSize: 43,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'chest');
                      },
                      child: Text(
                        "Start",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 3, 59, 105),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 130,
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 3, 103, 185),
                borderRadius: BorderRadius.circular(26),
                image: DecorationImage(
                    image: AssetImage('ahme/leg1.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 190, 0),
                child: Column(
                  children: [
                    Text(
                      " Legs",
                      style: TextStyle(
                        fontSize: 43,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'legs');
                      },
                      child: Text(
                        "Start",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 3, 59, 105),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 130,
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 3, 103, 185),
                borderRadius: BorderRadius.circular(26),
                image: DecorationImage(
                    image: AssetImage('ahme/abs1.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 190, 0),
                child: Column(
                  children: [
                    Text(
                      " Abs",
                      style: TextStyle(
                        fontSize: 43,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'abs');
                      },
                      child: Text(
                        "Start",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 3, 59, 105),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
