import 'package:flutter/material.dart';

class mytextfield extends StatelessWidget {
  final controler;
  final String hint;
  final bool obsc;
  const mytextfield({
    super.key,
    required this.controler,
    required this.hint,
    required this.obsc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controler,
        obscureText: obsc,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
          fillColor: Color.fromARGB(255, 218, 216, 216),
          filled: true,
          hintText: hint,
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        style: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
          fontWeight: FontWeight.bold,
          fontSize: 19,
        ),
      ),
    );
  }
}
