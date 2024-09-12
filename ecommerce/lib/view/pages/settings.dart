import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 230, 228, 228),
        ),
        child: Center(
          child: MaterialButton(
            onPressed: () {},
            color: Colors.amber[700],
            child: Text('Delete my account'),
          ),
        ),
      ),
    );
  }
}
