// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomBtmNavBar extends StatelessWidget {
  CustomBtmNavBar({
    Key? key,
    required this.onTap,
    required this.index,
  }) : super(key: key);
  final Function(int)? onTap;
  final int index;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        backgroundColor: Colors.amber[700],
        // const Color.fromARGB(255, 206, 206, 206), //.withOpacity(0.9),
        selectedIndex: index,
        elevation: 12,
        onDestinationSelected: onTap,
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.local_offer_outlined), label: 'Offers'),
          NavigationDestination(
              icon: Icon(Icons.shopping_basket_outlined), label: 'My Order'),
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.settings_outlined), label: 'Settings'),
        ]);
  }
}
