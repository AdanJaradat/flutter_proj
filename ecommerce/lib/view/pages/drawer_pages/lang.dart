import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Language'),
        backgroundColor: Colors.amber[700],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 230, 228, 228),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 22),
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.amber[700],
                  child: Text('العربية'),
                ),
              ),
              const SizedBox(height: 25),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 22),
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.amber[700],
                  child: Text('English'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
