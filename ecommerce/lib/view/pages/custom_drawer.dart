import 'package:ecommerce/view/components/drawer_item.dart';
import 'package:ecommerce/view/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:
          const Color.fromARGB(255, 206, 206, 206).withOpacity(0.9),
      child: ListView(
        children: [
          DrawerHeader(
              child: Column(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/logo.jpg'),
              ),
              const SizedBox(height: 3),
              Text(
                'Vintage Home Furniture',
                style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey.shade800),
              ),
            ],
          )),
          Divider(
            thickness: 1,
            color: Colors.grey.shade700,
            indent: 30,
            endIndent: 30,
          ),
          const SizedBox(height: 6),
          DrawerItem(
            title: 'Home',
            icon: Icons.home_outlined,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          const SizedBox(height: 6),
          DrawerItem(
            title: 'My Profile',
            icon: Icons.person_outline,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          const SizedBox(height: 6),
          DrawerItem(
            title: 'Our Branches',
            icon: Icons.location_on_outlined,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          const SizedBox(height: 6),
          DrawerItem(
            title: 'Invite Friends',
            icon: Icons.person_add_outlined,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          const SizedBox(height: 6),
          DrawerItem(
            title: 'Feedback',
            icon: Icons.feedback_outlined,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          const SizedBox(height: 6),
          DrawerItem(
            title: 'Rate Our App',
            icon: Icons.star_outline,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          const SizedBox(height: 6),
          DrawerItem(
            title: 'Language',
            icon: Icons.language_outlined,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          const SizedBox(height: 6),
          DrawerItem(
            title: 'Privacy Policy',
            icon: Icons.privacy_tip_outlined,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          const SizedBox(height: 6),
          DrawerItem(
            title: 'Application Developer',
            icon: Icons.developer_mode_outlined,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
        ],
      ),
    );
  }
}
