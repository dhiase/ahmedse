import 'package:flutter/material.dart';

import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/pg.dart';

class auth3 extends StatefulWidget {
  const auth3({super.key});

  @override
  State<auth3> createState() => _auth3State();
}

class _auth3State extends State<auth3> {
  bool isfirst = true;
  void sc() {
    setState(() {
      isfirst = !isfirst;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isfirst) {
      return home(showpages: sc);
    } else {
      return pg(
        showpages: sc,
      );
    }
  }
}
