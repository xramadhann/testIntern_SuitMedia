// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testintern/Models/dataUser.dart';
import 'package:testintern/views/secondScreen.dart';

class firstScreen extends StatefulWidget {
  const firstScreen({super.key});

  @override
  State<firstScreen> createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  String inputText = '';
  bool isPalindrome = false;

  void checkPalindrome() {
    String cleanedText =
        inputText.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    String reversedText = cleanedText.split('').reversed.join('');
    isPalindrome = cleanedText == reversedText;
  }

  void showEmptyFieldWarning() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Warning'),
          content: Text('The name field cannot be empty.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

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
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 214, 214, 214),
                    ),
                    child: Icon(
                      CupertinoIcons.person_add_solid,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 50),
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
                        labelText: 'Name',
                        border: InputBorder.none,
                      ),
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
                        labelText: 'Result',
                        border: InputBorder.none,
                      ),
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
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                setState(() {
                  checkPalindrome();
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.90,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'CHECK',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                if (inputText.isEmpty) {
                  showEmptyFieldWarning();
                } else {
                  setState(() {
                    allUsers[0].name = inputText;
                    allUsers[0].email = inputText + '@gmail.com';
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => secondScreen(
                        user: allUsers[0],
                      ),
                    ),
                  );
                }
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.90,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
