// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:box/box.dart';

class sett extends StatefulWidget {
  const sett({super.key});

  @override
  State<sett> createState() => _settState();
}

class _settState extends State<sett> {
  void singout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            " الاعدادات",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 140,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(150, 6, 0, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'update');
              },
              child: Row(
                children: [
                  Text(
                    'الحساب',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.background,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.person,
                    size: 50,
                    color: Theme.of(context).colorScheme.background,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 6, 180, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 3, 103, 185),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: PopupMenuButton(
                    child: Text(
                      "اختيار",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        onTap: () {
                          Navigator.pushNamed(context, 'as');
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
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 6, 0, 0),
                child: Text(
                  "اللغة",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 6, 90, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 3, 103, 185),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: PopupMenuButton(
                    child: Text(
                      "اختيار",
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
              ),
              Text(
                " الوضع الليلي ",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
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
                  "تسجيل الخروج",
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
    );
  }
}
