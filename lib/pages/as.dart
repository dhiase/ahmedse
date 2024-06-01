// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/about.dart';
import 'package:flutter_application_1/pages/food.dart';
import 'package:flutter_application_1/pages/home1.dart';
import 'package:flutter_application_1/pages/settings.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

class sam extends StatefulWidget {
  const sam({
    super.key,
  });

  @override
  State<sam> createState() => _samState();
}

class _samState extends State<sam> {
  PageController controllerr = PageController();
  PageController cont = PageController();
  var x;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Stack(
        children: [
          PageView(
            allowImplicitScrolling: true,
            physics: ScrollPhysics(),
            controller: controllerr,
            onPageChanged: (value) {
              setState(() {
                value = controllerr as int;
                x = value;
              });
            },
            children: [
              home1(),
              food(),
              about(),
              settings(),
            ],
          ),
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
                icon: Icons.home_rounded,
                text: 'Home',
                borderRadius: BorderRadius.circular(26),
                iconColor: Colors.white,
                onPressed: () {
                  controllerr.animateToPage(0,
                      duration: Duration(
                        milliseconds: 500,
                      ),
                      curve: Curves.easeIn);
                },
              ),
              GButton(
                icon: Icons.food_bank_rounded,
                text: 'Food',
                iconColor: Colors.white,
                onPressed: () {
                  controllerr.animateToPage(
                    1,
                    duration: Duration(
                      milliseconds: 500,
                    ),
                    curve: Curves.easeIn,
                  );
                },
              ),
              GButton(
                icon: Icons.groups_2_rounded,
                text: 'About',
                borderRadius: BorderRadius.circular(26),
                iconColor: Colors.white,
                onPressed: () {
                  controllerr.animateToPage(2,
                      duration: Duration(
                        milliseconds: 500,
                      ),
                      curve: Curves.easeIn);
                },
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
                iconColor: Colors.white,
                onPressed: () {
                  controllerr.animateToPage(
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
