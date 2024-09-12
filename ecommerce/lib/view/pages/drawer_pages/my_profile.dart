// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ecommerce/model/user.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({
    Key? key,
    required this.user,
  }) : super(key: key);
  final Map user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Profile'),
        backgroundColor: Colors.amber[700],
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 230, 228, 228),
        ),
        child: Form(
            child: ListView(
          children: [
            SizedBox(height: 35),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                readOnly: true,
                initialValue: user['name'],
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline),
                  prefixIconColor: Colors.grey.shade800,
                  fillColor: const Color.fromARGB(255, 235, 235, 235),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade800)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.grey.shade900, width: 2),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                readOnly: true,
                initialValue: user['email'],
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  prefixIconColor: Colors.grey.shade800,
                  fillColor: const Color.fromARGB(255, 235, 235, 235),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade800)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.grey.shade900, width: 2),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                readOnly: true,
                initialValue: user['phone'],
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  prefixIconColor: Colors.grey.shade800,
                  fillColor: const Color.fromARGB(255, 235, 235, 235),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade800)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.grey.shade900, width: 2),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                readOnly: true,
                initialValue: user['gender'],
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline),
                  prefixIconColor: Colors.grey.shade800,
                  fillColor: const Color.fromARGB(255, 235, 235, 235),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade800)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.grey.shade900, width: 2),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
