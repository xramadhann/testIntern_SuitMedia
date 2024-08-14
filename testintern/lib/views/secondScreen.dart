// ignore_for_file: file_names, camel_case_types, unnecessary_string_interpolations, unnecessary_const
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testintern/Models/dataUser.dart';
import 'package:testintern/views/firstScreen.dart';
import 'package:testintern/views/thirdScreen.dart';

class secondScreen extends StatelessWidget {
  final User user;

  const secondScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Second Screen",
          ),
        ),
        leading: IconButton(
          icon: const Icon(CupertinoIcons.chevron_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const firstScreen()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Welcome'),
                Text("${user.name}", style: const TextStyle(fontSize: 20)),
              ],
            ),
            const Center(
              child: const Text(
                "Selected User Name",
                style: TextStyle(fontSize: 20),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const thirdScreen()),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 100,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 43, 99, 123),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Choose a User',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
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
