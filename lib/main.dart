import 'package:flutter/material.dart';

import 'package:flutter_dart_course/widgets/expenses.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(255, 220, 189, 252)),
      home: const Expenses(),
    ),
  );
}