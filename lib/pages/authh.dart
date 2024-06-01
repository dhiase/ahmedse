import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';

import 'package:flutter_application_1/pages/pg.dart';

class authh extends StatefulWidget {
  const authh({super.key});

  @override
  State<authh> createState() => _authhState();
}

class _authhState extends State<authh> {
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
      return pg(showpages: sc);
    }
  }
}
