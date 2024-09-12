import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InviteFriends extends StatelessWidget {
  const InviteFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Invite Friends'),
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
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/logo.jpg'),
              ),
              const SizedBox(height: 20),
              Text(
                'Vintage Home Furniture',
                style: GoogleFonts.lato(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey.shade800),
              ),
              const SizedBox(height: 20),
              Container(
                margin: EdgeInsets.fromLTRB(45, 0, 30, 0),
                child: Text(
                  'Invite your friends to download Vintage Home Furniture App',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 25),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 22),
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.amber[700],
                  child: Text('Invite'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
