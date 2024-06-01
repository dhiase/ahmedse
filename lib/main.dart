// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/aboutar.dart';
import 'package:flutter_application_1/pages/abs.dart';
import 'package:flutter_application_1/pages/as.dart';
import 'package:flutter_application_1/pages/auth.dart';
import 'package:flutter_application_1/pages/chest.dart';
import 'package:flutter_application_1/pages/front.dart';
import 'package:flutter_application_1/pages/fullbody.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/goal.dart';
import 'package:flutter_application_1/pages/legs.dart';
import 'package:flutter_application_1/pages/pg.dart';
import 'package:flutter_application_1/pages/sex.dart';
import 'package:flutter_application_1/pages/home1.dart';
import 'package:flutter_application_1/pages/home2.dart';
import 'package:flutter_application_1/pages/settings.dart';
import 'package:flutter_application_1/pages/theme.dart';
import 'package:flutter_application_1/pages/info.dart';
import 'package:flutter_application_1/pages/s.dart';
import 'package:flutter_application_1/pages/sear.dart';
import 'package:flutter_application_1/pages/homear.dart';
import 'package:flutter_application_1/pages/authh.dart';
import 'package:flutter_application_1/pages/asar.dart';
import 'package:flutter_application_1/pages/arms.dart';
import 'package:flutter_application_1/pages/nambers.dart';
import 'package:flutter_application_1/pages/updatinfo.dart';
import 'package:flutter_application_1/pages/food.dart';
import 'package:flutter_application_1/pages/about.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      home: auth(),
      routes: {
        'goal': (context) => loading(),
        '/home': (context) => home(
              showpages: () {},
            ),
        '/sex': (context) => sex(),
        '/home1': (context) => home1(),
        '/settings': (context) => settings(),
        '/info': (context) => info(),
        's': (context) => dh(),
        'sear': (context) => sett(),
        'homear': (context) => homear(),
        'as': (context) => sam(),
        'asar': (context) => asar(),
        'arms': (context) => arms(),
        'pg': (context) => pg(showpages: () {}),
        'update': (context) => update(),
        'food': (context) => food(),
        'about': (context) => about(),
        'home2': (context) => home2(),
        'chest': (context) => chest(),
        'legs': (context) => legs(),
        'abs': (context) => abs(),
        'full': (context) => full(),
        'front': (context) => front(),
        'aboutar': (context) => aboutar(),
      },
      debugShowCheckedModeBanner: false,
      theme: lightmode,
      darkTheme: darkmode,
    ),
  );
}
