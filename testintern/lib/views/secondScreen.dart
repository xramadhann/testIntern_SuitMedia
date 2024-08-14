// ignore_for_file: file_names, camel_case_types
import 'package:flutter/material.dart';
import 'package:testintern/Models/dataUser.dart';
import 'package:testintern/views/thirdScreen.dart';

class secondScreen extends StatelessWidget {
  final User user;

  const secondScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selected User: ${user.name}'),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const thirdPage()),
                );
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
                    style: const TextStyle(
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
