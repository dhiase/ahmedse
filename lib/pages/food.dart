// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/getdata/calcul.dart';
import 'package:flutter_application_1/pages/foodrec.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class food extends StatefulWidget {
  const food({super.key});

  @override
  State<food> createState() => _foodState();
}

class _foodState extends State<food> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  CarouselController contt = CarouselController();
  static const image = [
    'https://i.pinimg.com/564x/e9/a7/91/e9a7910c167347714a61217a9b82551a.jpg',
    'https://i.pinimg.com/564x/f1/9f/7f/f19f7ff568d6b6a6b86b58ffe5d4ce08.jpg',
    'https://i.pinimg.com/564x/23/dd/ff/23ddffb013773b24ccf8383564167f73.jpg',
    'https://i.pinimg.com/564x/a2/51/66/a251669aa50e09e420432a6291140154.jpg',
    'https://i.pinimg.com/564x/55/ca/36/55ca361544b65de300d84d2dce86fb24.jpg',
  ];
  final image1 = [
    'https://i.pinimg.com/564x/47/85/2c/47852cc5096fc58018bce265e532ce5c.jpg',
    'https://i.pinimg.com/564x/13/04/7a/13047a898edf603efd6f3cfbabddbb78.jpg',
    'https://i.pinimg.com/564x/5e/1b/57/5e1b575fcc592904aaa11cde10044a3e.jpg',
    'https://i.pinimg.com/564x/13/75/d1/1375d1e049adfb1e685c5d864af0b2da.jpg',
  ];

  int co = 0;
  List<String> doc = [];
  int i = 1;
  Future getdoc() async {
    await FirebaseFirestore.instance
        .collection('calcul')
        .get()
        .then((snapshot) => snapshot.docs.forEach((element) {
              doc.add(element.reference.id);
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        body: FutureBuilder(
          future: getdoc(),
          builder: (context, snapshot) {
            return Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text(
                          'Explore Foods about your diet',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      Container(
                        height: 200,
                        width: 400,
                        child: CarouselSlider.builder(
                          carouselController: contt,
                          itemCount: image.length,
                          itemBuilder: (context, index, realIndex) {
                            final imagg = image[index];
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26),
                                image: DecorationImage(
                                  image: NetworkImage(imagg),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                          options: CarouselOptions(
                            height: 200,
                            autoPlay: true,
                            onPageChanged: (index, reason) {
                              setState(() {
                                co = index;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AnimatedSmoothIndicator(
                        activeIndex: co,
                        count: image.length,
                        effect: WormEffect(
                          dotWidth: 14,
                          dotHeight: 14,
                          activeDotColor:
                              const Color.fromARGB(255, 3, 103, 185),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Text(
                          "your Calories Goal:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 37,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: ListTile(
                          title: calcul(doc: doc[i - 1]),
                          titleTextStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 3, 103, 185),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              'More Food Recipes :',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            for (final foodre in foodre.foood)
                              foodrec(
                                imageUrl: foodre.image,
                                name: foodre.name,
                                kal: foodre.kal,
                                gram: foodre.gram,
                                gt: foodre.gt,
                              ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
          },
        ));
  }
}

class foodre {
  const foodre({
    required this.image,
    required this.name,
    required this.kal,
    required this.gram,
    required this.gt,
  });
  final String image;
  final String name;
  final String kal;
  final String gram;
  final GestureDetector gt;
  static List<foodre> foood = [
    foodre(
      image: 'ahme/fo1.jpg',
      name: 'Red lentil & squash dhal',
      kal: '239 Calories ',
      gram: 'for 100 grams',
      gt: GestureDetector(
        onTap: () async {
          var url = Uri.https('domesticgothess.com',
              '/blog/2018/05/23/red-lentil-dhal-with-roasted-cauliflower-and-butternut-squash-vegan/');
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          }
        },
        child: Icon(
          Icons.open_in_browser_rounded,
          color: Colors.white,
        ),
      ),
    ),
    foodre(
      image: 'ahme/fo2.jpg',
      name: 'Naked Chicken Burrito',
      kal: '278 Kca ',
      gram: 'for 100 grams',
      gt: GestureDetector(
        onTap: () async {
          var url = Uri.https(
            'www.myprotein.com',
            '/thezone/recipe/naked-chicken-burrito-bowl-meal-prep/',
          );
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          }
        },
        child: Icon(
          Icons.open_in_browser_rounded,
          color: Colors.white,
        ),
      ),
    ),
    foodre(
      image: 'ahme/fo3.jpg',
      name: 'Thai Fish Curry',
      kal: '338 kca ',
      gram: 'for 100 grams',
      gt: GestureDetector(
        onTap: () async {
          var url = Uri.https(
            'www.feastingathome.com',
            '/thai-fish-curry/',
          );
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          }
        },
        child: Icon(
          Icons.open_in_browser_rounded,
          color: Colors.white,
        ),
      ),
    ),
    foodre(
      image: 'ahme/fo4.jpg',
      name: 'Pumpkin Pie',
      kal: '243 calories',
      gram: 'for 100 grams',
      gt: GestureDetector(
        onTap: () async {
          var url = Uri.https(
            'thestayathomechef.com',
            '/easy-peasy-pumpkin-pie/',
            {
              'utm_medium': 'social',
              'utm_source': 'pinterest',
              'utm_campaign': 'tailwind_tribes',
              'utm_content': 'tribes',
            },
          );
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          }
        },
        child: Icon(
          Icons.open_in_browser_rounded,
          color: Colors.white,
        ),
      ),
    ),
    foodre(
      image: 'ahme/fo5.jpg',
      name: 'Buffalo Chicken Pasta Salad',
      kal: '485 calories ',
      gram: 'for 100 grams',
      gt: GestureDetector(
        onTap: () async {
          var url = Uri.https(
            'www.myprotein.com',
            '/thezone/recipe/buffalo-chicken-3-day-chicken-meal-prep/',
          );
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          }
        },
        child: Icon(
          Icons.open_in_browser_rounded,
          color: Colors.white,
        ),
      ),
    ),
    foodre(
      image: 'ahme/fo6.jpg',
      name: 'Lime & Chilli Turkey Burgers',
      kal: '147 calories ',
      gram: 'for 100 grams',
      gt: GestureDetector(
        onTap: () async {
          var url = Uri.https(
            'www.myprotein.com',
            '/thezone/recipe/homemade-chilli-lime-turkey-burgers/',
          );
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          }
        },
        child: Icon(
          Icons.open_in_browser_rounded,
          color: Colors.white,
        ),
      ),
    ),
    foodre(
      image: 'ahme/fo7.jpg',
      name: 'Chicken & Broccoli',
      kal: '172.5 calories ',
      gram: 'for 100 grams',
      gt: GestureDetector(
        onTap: () async {
          var url = Uri.https(
            'www.delish.com',
            '/cooking/recipe-ideas/a60204088/chicken-and-broccoli-recipe/',
          );
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          }
        },
        child: Icon(
          Icons.open_in_browser_rounded,
          color: Colors.white,
        ),
      ),
    ),
  ];
}
