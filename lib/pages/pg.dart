// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/front.dart';
import 'package:flutter_application_1/pages/home2.dart';

import 'package:flutter_application_1/pages/info.dart';
import 'package:flutter_application_1/pages/goal.dart';
import 'package:flutter_application_1/pages/s.dart';
import 'package:flutter_application_1/pages/sex.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class pg extends StatefulWidget {
  final VoidCallback showpages;
  const pg({
    super.key,
    required this.showpages,
  });

  @override
  State<pg> createState() => _pgState();
}

class _pgState extends State<pg> {
  PageController cont = PageController();
  bool isend = false;
  bool isfirst = false;
  bool islast = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            allowImplicitScrolling: true,
            onPageChanged: (index) {
              setState(() {
                isend = (index == 4);
                isfirst = (index == 0);
              });
            },
            controller: cont,
            children: [
              front(),
              sex(),
              loading(),
              info(),
              home2(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                islast
                    ? dh()
                    : isfirst
                        ? Text('')
                        : GestureDetector(
                            child: Text(
                              'previous',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              cont.previousPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                          ),
                SmoothPageIndicator(
                  controller: cont,
                  count: 5,
                  effect: ExpandingDotsEffect(
                    dotColor: Color.fromARGB(255, 182, 210, 234),
                    activeDotColor: const Color.fromARGB(255, 3, 103, 185),
                  ),
                ),
                isend
                    ? Text('')
                    : isfirst
                        ? GestureDetector(
                            child: Text(
                              'continue',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            onTap: () {
                              cont.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                          )
                        : GestureDetector(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              cont.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                          ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
