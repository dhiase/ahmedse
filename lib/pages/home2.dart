// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/pages/textfield.dart';

class home2 extends StatefulWidget {
  home2({
    super.key,
  });

  @override
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {
  final name = TextEditingController();
  final familyname = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();
  final email = TextEditingController();

  Future singup() async {
    if (passwordconfir()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text.trim(), password: password.text.trim());

      adddetails(
        name.text.trim(),
        familyname.text.trim(),
        email.text.trim(),
        password.text.trim(),
      );
    }
  }

  Future adddetails(
      String namee, String fam, String emaill, String pass) async {
    await FirebaseFirestore.instance.collection('newuser').add({
      'name': namee,
      'family': fam,
      'email': emaill,
      'password': pass,
    });
  }

  bool passwordconfir() {
    if (password.text.trim() == password.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: ListView(
        children: [
          SafeArea(
              child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'One Last Step',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Add your Personal Information',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 65,
                ),
                mytextfield(
                  controler: name,
                  hint: 'Name',
                  obsc: false,
                ),
                SizedBox(
                  height: 30,
                ),
                mytextfield(
                  controler: familyname,
                  hint: 'familyname',
                  obsc: false,
                ),
                SizedBox(
                  height: 30,
                ),
                mytextfield(
                  controler: email,
                  hint: 'email',
                  obsc: false,
                ),
                SizedBox(
                  height: 30,
                ),
                mytextfield(
                  controler: password,
                  hint: 'Password',
                  obsc: true,
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: singup,
                  child: Container(
                    height: 70,
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 3, 103, 185),
                    ),
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
