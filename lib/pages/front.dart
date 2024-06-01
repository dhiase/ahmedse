import 'package:flutter/material.dart';

class front extends StatefulWidget {
  front({
    super.key,
  });

  @override
  State<front> createState() => _frontState();
}

class _frontState extends State<front> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('ahme/build.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'Welcome ',
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'To',
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'Keep',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 3, 103, 185),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'Fitter',
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 3, 103, 185),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 140,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    "I'm a memeber!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                      child: Text(
                        ' Login now',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: const Color.fromARGB(255, 3, 103, 185),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/home');
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
