import 'package:expense_app/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 220, 189, 252)),
    debugShowCheckedModeBanner: false,
    home: const Expenses(),
  ));
}
