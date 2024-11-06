import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 26, 2, 80), Color.fromARGB(
                      255, 13, 98, 7)]
              ),
            ),
        child: const Center(
          child: Text('Hello world!'),
        ),
      )),
    ),
  );
}
