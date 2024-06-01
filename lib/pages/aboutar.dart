import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class aboutar extends StatefulWidget {
  const aboutar({super.key});

  @override
  State<aboutar> createState() => _aboutState();
}

class _aboutState extends State<aboutar> {
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
                  'حافظ على لياقتك هو تطبيق ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  ' يسمح لك بتطوير جسدك',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'مع مساعدة التمارين الرياضية و التغذية',
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
                      padding: const EdgeInsets.fromLTRB(170, 0, 00, 0),
                      child: Text(
                        ': المطورين ',
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
                        'عادل مساوي',
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
                          'استاذ في جامعة محمد ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'بوضياف وكلية الاعلام الألي  ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'والرياضيات',
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
                        'سحيم أحمد ضياء الدين',
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
                        SizedBox(
                          width: 10,
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
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              'طالب في جامعة محمحد بوضياف ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'مطور تطبيقات الهواتف و مهتم ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'حول هندسة البرمجيات',
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
                        'بريكات عبد المعين',
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
                        SizedBox(
                          width: 10,
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
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              'طالب في جامعة محمد بوضياف ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              ' مصمم جرافيك و متحصل على درجة',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              ' البكالوريوس في نظم المعلوماتية',
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
