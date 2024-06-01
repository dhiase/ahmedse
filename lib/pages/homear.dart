// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class homear extends StatefulWidget {
  const homear({super.key});

  @override
  State<homear> createState() => _homearState();
}

class _homearState extends State<homear> {
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
              padding: const EdgeInsets.fromLTRB(180, 0, 0, 0),
              child: Text(
                "تدرب معنا ",
                style: TextStyle(
                  fontSize: 43,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
              child: Text(
                "لجسم افضل",
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
                width: MediaQuery.of(context).size.width,
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
                          padding: const EdgeInsets.fromLTRB(230, 10, 0, 0),
                          child: Text(
                            "الجسم",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(160, 10, 0, 0),
                          child: Text(
                            "  X3 تمارين",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(180, 0, 0, 5),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "ابدأ الأن ",
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
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 3, 103, 185),
                borderRadius: BorderRadius.circular(26),
                image: DecorationImage(
                    image: AssetImage('ahme/dhia.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(180, 10, 0, 0),
                child: Column(
                  children: [
                    Text(
                      " الاكتاف",
                      style: TextStyle(
                        fontSize: 43,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        " ابدأ ",
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
                    image: AssetImage('ahme/chest.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(180, 10, 0, 0),
                child: Column(
                  children: [
                    Text(
                      "الصدر",
                      style: TextStyle(
                        fontSize: 43,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "ابدأ",
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
                padding: const EdgeInsets.fromLTRB(180, 10, 0, 0),
                child: Column(
                  children: [
                    Text(
                      "الأرجل",
                      style: TextStyle(
                        fontSize: 43,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "ابدأ",
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
                padding: const EdgeInsets.fromLTRB(180, 10, 0, 0),
                child: Column(
                  children: [
                    Text(
                      "البطن",
                      style: TextStyle(
                        fontSize: 43,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "ابدأ",
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
