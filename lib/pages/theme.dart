// ignore: unused_import
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    onBackground: Colors.white,
    background: Colors.black,
  ),
);

ThemeData darkmode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    onBackground: Colors.black,
    background: Colors.white,
  ),
);
