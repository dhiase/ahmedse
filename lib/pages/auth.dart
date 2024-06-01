//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/pages/as.dart';

import 'package:flutter_application_1/pages/authh.dart';
//import 'package:flutter_application_1/pages/as.dart';

//import 'package:flutter_application_1/pages/pg.dart';

class auth extends StatelessWidget {
  const auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return sam();
          } else {
            return authh();
          }
        },
      ),
    );
  }
}
