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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: const InputDecoration(
                          labelText: 'Enter a string',
                          border: InputBorder.none),
                      onChanged: (text) {
                        setState(() {
                          inputText = text;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      enabled: false,
                      decoration: const InputDecoration(
                          labelText: 'Result', border: InputBorder.none),
                      controller: TextEditingController(
                        text: inputText.isEmpty
                            ? "Text is empty"
                            : (isPalindrome
                                ? "This is a Palindrome"
                                : "This is not a Palindrome"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
