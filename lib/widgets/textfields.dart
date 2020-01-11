import 'package:flutter/material.dart';
Widget textfields(String hint){
  return Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
        child: TextField(
          decoration: InputDecoration(
            fillColor: Color.fromARGB(255,233,229,229),
            filled: true,
            border: OutlineInputBorder(),
            hintText: hint,
          ),
        ),
      );
}