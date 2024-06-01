import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class calcul extends StatelessWidget {
  final String doc;
  const calcul({super.key, required this.doc});

  @override
  Widget build(BuildContext context) {
    CollectionReference userheight =
        FirebaseFirestore.instance.collection('calcul');
    return FutureBuilder(
      future: userheight.doc('calcul').get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Text(
            '${data['call']}',
          );
        }
        return Text('');
      },
    );
  }
}
