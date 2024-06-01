// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:box/box.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/getdata/age.dart';
import 'package:flutter_application_1/getdata/height.dart';
import 'package:flutter_application_1/getdata/weight.dart';
import 'package:flutter_application_1/pages/nambers.dart';
import 'package:flutter_application_1/pages/info.dart';

// ignore: must_be_immutable
class update extends StatefulWidget {
  update({
    super.key,
  });
  late int ind1, ind2, ind3;

  @override
  State<update> createState() => _updateState();
}

class _updateState extends State<update> {
  List<String> doc = [];

  Future getdoc() async {
    await FirebaseFirestore.instance
        .collection('user')
        .get()
        .then((snapshot) => snapshot.docs.forEach((element) {
              doc.add(element.reference.id);
            }));
  }

  int ind1 = 0;
  int ind2 = 0;
  int ind3 = 0;
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
                    height: 60,
                  ),
                  Text(
                    "Update your Inforamtion",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 180,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Height',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Container(
                        width: 80,
                        child: ListTile(
                          title: height(doc: doc[1]),
                        ),
                      ),
                      SizedBox(
                        width: 36,
                      ),
                      IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor:
                                  const Color.fromARGB(255, 3, 103, 185),
                              actions: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              40, 10, 0, 0),
                                          child: Container(
                                            width: 60,
                                            height: 150,
                                            child:
                                                ListWheelScrollView.useDelegate(
                                              physics:
                                                  FixedExtentScrollPhysics(),
                                              perspective: 0.005,
                                              itemExtent: 50,
                                              diameterRatio: 1.2,
                                              childDelegate:
                                                  ListWheelChildBuilderDelegate(
                                                childCount: 200,
                                                builder: (context, index) =>
                                                    numbers(
                                                  number: index,
                                                ),
                                              ),
                                              onSelectedItemChanged: (index) {
                                                setState(() {
                                                  ind1 = index;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              40, 0, 0, 0),
                                          child: Container(
                                            width: 66,
                                            height: 150,
                                            child: ListWheelScrollView(
                                              physics:
                                                  FixedExtentScrollPhysics(),
                                              perspective: 0.005,
                                              itemExtent: 50,
                                              diameterRatio: 1.2,
                                              children: [
                                                Text(
                                                  'CM',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  'FEET',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);

                                        DocumentReference colref =
                                            FirebaseFirestore.instance
                                                .collection('user')
                                                .doc('height');

                                        colref.update({
                                          'height': ind1,
                                        });
                                      },
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 3, 103, 185),
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration:
                                      BoxDecoration(color: Colors.amber),
                                ),
                              ],
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.mode_edit,
                          color: Theme.of(context).colorScheme.background,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(
                    color: Theme.of(context).colorScheme.background,
                    thickness: 2,
                    height: 5,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Weight',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Container(
                        width: 60,
                        child: ListTile(
                          title: weight(doc: doc[2]),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor:
                                  const Color.fromARGB(255, 3, 103, 185),
                              actions: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              40, 10, 0, 0),
                                          child: Container(
                                            width: 60,
                                            height: 150,
                                            child:
                                                ListWheelScrollView.useDelegate(
                                              physics:
                                                  FixedExtentScrollPhysics(),
                                              perspective: 0.005,
                                              itemExtent: 50,
                                              diameterRatio: 1.2,
                                              childDelegate:
                                                  ListWheelChildBuilderDelegate(
                                                childCount: 161,
                                                builder: (context, index) =>
                                                    numbers(
                                                  number: index,
                                                ),
                                              ),
                                              onSelectedItemChanged: (index) {
                                                setState(() {
                                                  ind2 = index;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              40, 0, 0, 0),
                                          child: Container(
                                            width: 66,
                                            height: 150,
                                            child: ListWheelScrollView(
                                              physics:
                                                  FixedExtentScrollPhysics(),
                                              perspective: 0.005,
                                              itemExtent: 50,
                                              diameterRatio: 1.2,
                                              children: [
                                                Text(
                                                  'KG',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  'POUND',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        DocumentReference colref =
                                            FirebaseFirestore.instance
                                                .collection('user')
                                                .doc('weight');

                                        colref.update({
                                          'weight': ind2,
                                        });
                                      },
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 3, 103, 185),
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.mode_edit,
                          color: Theme.of(context).colorScheme.background,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Theme.of(context).colorScheme.background,
                    thickness: 2,
                    height: 5,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Age',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      Container(
                        width: 60,
                        child: ListTile(
                          title: age(doc: doc[0]),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor:
                                  const Color.fromARGB(255, 3, 103, 185),
                              actions: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          130, 0, 0, 0),
                                      child: Container(
                                        width: 60,
                                        height: 150,
                                        child: ListWheelScrollView.useDelegate(
                                          physics: FixedExtentScrollPhysics(),
                                          perspective: 0.005,
                                          itemExtent: 50,
                                          diameterRatio: 1.2,
                                          childDelegate:
                                              ListWheelChildBuilderDelegate(
                                            childCount: 80,
                                            builder: (context, index) =>
                                                numbers(
                                              number: index,
                                            ),
                                          ),
                                          onSelectedItemChanged: (index) {
                                            setState(() {
                                              ind3 = index;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      DocumentReference colref =
                                          FirebaseFirestore.instance
                                              .collection('user')
                                              .doc('age');

                                      colref.update({
                                        'age': ind3,
                                      });
                                    },
                                    child: Text(
                                      "Save",
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 3, 103, 185),
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.mode_edit,
                          color: Theme.of(context).colorScheme.background,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ));
        },
      ),
    );
  }
}
