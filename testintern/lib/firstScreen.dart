// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class firstScreen extends StatefulWidget {
  const firstScreen({super.key});

  @override
  State<firstScreen> createState() => _firstScreenState();
}

String inputText = '';
bool isPalindrome = false;

void checkPalindrome() {
  String cleanedText =
      inputText.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  String reversedText = cleanedText.split('').reversed.join('');
  isPalindrome = cleanedText == reversedText;
}

class _firstScreenState extends State<firstScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
