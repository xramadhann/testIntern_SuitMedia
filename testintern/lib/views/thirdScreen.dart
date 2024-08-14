// ignore_for_file: file_names, camel_case_types, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:testintern/Models/dataUser.dart';

class thirdPage extends StatefulWidget {
  const thirdPage({super.key});

  @override
  State<thirdPage> createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ListView.builder(
            itemCount: allUsers.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: GestureDetector(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.only(top: 20, left: 20),
                      leading: Container(
                        width: MediaQuery.of(context).size.width * 0.10,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(allUsers[index].image),
                          ),
                        ),
                      ),
                      title: Text(allUsers[index].name),
                      subtitle: Text('${allUsers[index].email}'),
                      isThreeLine: true,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
