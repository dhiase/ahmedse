// ignore_for_file: unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class height extends StatelessWidget {
  final String doc;
  const height({super.key, required this.doc});

  @override
  Widget build(BuildContext context) {
    CollectionReference userheight =
        FirebaseFirestore.instance.collection('user');
    return FutureBuilder(
      future: userheight.doc('height').get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Text(
            '${data['height']}',
          );
        }
        return Text('loading');
      },
    );
  }
}
