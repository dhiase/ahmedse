// ignore: unused_import
// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, use_function_type_syntax_for_parameters

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter_application_1/pages/nambers.dart';

// ignore: must_be_immutable
class info extends StatefulWidget {
  info({
    super.key,
  });
  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  late final String ah;
  int val = 0;
  int ind1 = 0;
  int ind2 = 0;
  int ind3 = 0;
  int i = 0;
  var height = TextEditingController();
  var wieght = TextEditingController();
  var age = TextEditingController();
  int a = 0, b = 0, c = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 80, 0, 0),
                child: Text(
                  "Tell us more about you",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
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
                    width: 150,
                  ),
                  Container(
                    width: 37,
                    child: Text(
                      ind1.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
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
                                        child: ListWheelScrollView.useDelegate(
                                          physics: FixedExtentScrollPhysics(),
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
                                              a = index;
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
                                          physics: FixedExtentScrollPhysics(),
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
                                    DocumentReference colref = FirebaseFirestore
                                        .instance
                                        .collection('user')
                                        .doc('height');

                                    colref.set({
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
                              decoration: BoxDecoration(color: Colors.amber),
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
                    width: 150,
                  ),
                  Container(
                    width: 37,
                    child: Text(
                      ind2.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
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
                                        child: ListWheelScrollView.useDelegate(
                                          physics: FixedExtentScrollPhysics(),
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
                                              b = index;
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
                                          physics: FixedExtentScrollPhysics(),
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
                                    DocumentReference colref = FirebaseFirestore
                                        .instance
                                        .collection('user')
                                        .doc('weight');

                                    colref.set({
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
                    width: 180,
                  ),
                  Container(
                    width: 37,
                    child: Text(
                      ind3.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(130, 0, 0, 0),
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
                                        builder: (context, index) => numbers(
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
                                  DocumentReference colref = FirebaseFirestore
                                      .instance
                                      .collection('user')
                                      .doc('age');

                                  colref.update({
                                    'age': ind3,
                                  });
                                  DocumentReference colreff = FirebaseFirestore
                                      .instance
                                      .collection('calcul')
                                      .doc('calcul');
                                  colreff.update({
                                    'call': clalcul(),
                                  });
                                },
                                child: Text(
                                  "Save",
                                  style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 3, 103, 185),
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
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }

  double clalcul() {
    double y;
    y = (66.47 + (13.75 * b) + (5.003 * a) + (6.775 * c));
    return y;
  }
}
