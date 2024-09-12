// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  DrawerItem({
    Key? key,
    required this.onTap,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final Function() onTap;
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: Icon(
          icon,
          size: 35,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 19,
          ),
        ),
      ),
    );
  }
}
