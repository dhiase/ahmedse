// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Keep Fitter',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Text(
                  'Keep Fitter is an application that  ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  ' allows you to devolope your physice',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'with the help of excercises and food ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                thickness: 2.4,
                color: Colors.grey,
                endIndent: 20,
                indent: 20,
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        'Devlopers:',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 380,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 3, 103, 185),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 7,
                    ),
                    Center(
                      child: Text(
                        'Adel Mousaoui',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Column(
                      children: [
                        Text(
                          'A Profeser At University Mohamed ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          ' Boudiaf and  the department of ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Computer Science',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () async {
                              final Uri _emailLaunchUri = Uri(
                                scheme: 'mailto',
                                path: 'adel.moussaoui@univ-msila.dz',
                                queryParameters: {'subject': '', 'body': ''},
                              );
                              if (await canLaunchUrl(_emailLaunchUri)) {
                                await launchUrl(_emailLaunchUri);
                              }
                            },
                            child: Icon(
                              Icons.email_rounded,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                width: 380,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 3, 103, 185),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 7,
                    ),
                    Center(
                      child: Text(
                        'Sehaim Ahmed Dhia Eddine',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'A student At Mohamed Boudiaf ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'mobile developer & passiont ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'about Software Engineering',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Center(
                              child: GestureDetector(
                                onTap: () async {
                                  final Uri _emailLaunchUri = Uri(
                                    scheme: 'mailto',
                                    path: 'ahmedsehaim24@gmail.com',
                                    queryParameters: {
                                      'subject': '',
                                      'body': ''
                                    },
                                  );
                                  if (await canLaunchUrl(_emailLaunchUri)) {
                                    await launchUrl(_emailLaunchUri);
                                  }
                                },
                                child: Icon(
                                  Icons.email_rounded,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 130,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('ahme/dhiaa.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                width: 380,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 3, 103, 185),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 7,
                    ),
                    Center(
                      child: Text(
                        'Brikat Abd El Mouin',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'A student At Mohamed Boudiaf ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              ',A graphic designer & Bachelor ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              ' Degree In System Informatique',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: GestureDetector(
                                onTap: () async {
                                  final Uri _emailLaunchUri = Uri(
                                    scheme: 'mailto',
                                    path: 'mouinmouin562@gmail.com',
                                    queryParameters: {
                                      'subject': '',
                                      'body': ''
                                    },
                                  );
                                  if (await canLaunchUrl(_emailLaunchUri)) {
                                    await launchUrl(_emailLaunchUri);
                                  }
                                },
                                child: Icon(
                                  Icons.email_rounded,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 130,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('ahme/moin.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
