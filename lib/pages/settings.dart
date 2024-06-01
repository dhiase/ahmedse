// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, sort_child_properties_last

import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/as.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:box/box.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  void singout() {
    FirebaseAuth.instance.signOut();
  }

  PageController cont = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Padding(
        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              " Settings",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 120,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'update');
              },
              child: Row(
                children: [
                  Text(
                    'Account',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.background,
                    ),
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Icon(
                    Icons.person,
                    size: 50,
                    color: Theme.of(context).colorScheme.background,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(6, 6, 0, 0),
                  child: Text(
                    "Language",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(6, 6, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 3, 103, 185),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: PopupMenuButton(
                      child: Text(
                        "Select",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          onTap: () {
                            Navigator.pushNamed(context, 'asar');
                          },
                          child: Text(
                            "English",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            Navigator.pushNamed(context, 'asar');
                          },
                          child: Text(
                            "العربية",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " Dark mode ",
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 3, 103, 185),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: PopupMenuButton(
                    child: Text(
                      "Select",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text(
                          "on",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Off",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: singout,
              child: Container(
                height: 70,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 3, 103, 185),
                ),
                child: Center(
                  child: Text(
                    "Sign out",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
