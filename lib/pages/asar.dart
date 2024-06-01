// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/aboutar.dart';
import 'package:flutter_application_1/pages/food.dart';
import 'package:flutter_application_1/pages/homear.dart';
import 'package:flutter_application_1/pages/sear.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class asar extends StatefulWidget {
  const asar({super.key});

  @override
  State<asar> createState() => _asarState();
}

class _asarState extends State<asar> {
  PageController cont = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: PageView(
        allowImplicitScrolling: true,
        controller: cont,
        children: [
          sett(),
          aboutar(),
          food(),
          homear(),
        ],
      ),
      bottomNavigationBar: Container(
        width: 300,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 3, 103, 185),
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(26), bottom: Radius.circular(0)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            tabBorderRadius: 30,
            curve: Curves.easeOutExpo,
            activeColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            style: GnavStyle.google,
            tabs: [
              GButton(
                icon: Icons.settings,
                text: 'الاعدادت',
                borderRadius: BorderRadius.circular(26),
                iconColor: Colors.white,
                onPressed: () {
                  cont.animateToPage(0,
                      duration: Duration(
                        milliseconds: 500,
                      ),
                      curve: Curves.easeIn);
                },
              ),
              GButton(
                icon: Icons.groups_2_rounded,
                text: 'حول',
                iconColor: Colors.white,
                onPressed: () {
                  cont.animateToPage(
                    1,
                    duration: Duration(
                      milliseconds: 500,
                    ),
                    curve: Curves.easeIn,
                  );
                },
              ),
              GButton(
                icon: Icons.food_bank_rounded,
                text: 'الأكل',
                borderRadius: BorderRadius.circular(26),
                iconColor: Colors.white,
                onPressed: () {
                  cont.animateToPage(2,
                      duration: Duration(
                        milliseconds: 500,
                      ),
                      curve: Curves.easeIn);
                },
              ),
              GButton(
                icon: Icons.home_rounded,
                text: 'المنزل',
                iconColor: Colors.white,
                onPressed: () {
                  cont.animateToPage(
                    3,
                    duration: Duration(
                      milliseconds: 500,
                    ),
                    curve: Curves.easeIn,
                  );
                },
                borderRadius: BorderRadius.circular(26),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
