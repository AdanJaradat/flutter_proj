// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  CustomField({
    Key? key,
    required this.label,
    required this.icon,
    required this.onSavedClick,
    required this.controller,
    required this.onValidator,
  }) : super(key: key);
  final String label;
  final Icon icon;
  final Function(String?) onSavedClick;
  final TextEditingController controller;
  final String? Function(String?) onValidator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: label == 'Password' ? true : false,
      keyboardType: label == 'Phone' ? TextInputType.phone : TextInputType.text,
      validator: onValidator,
      onSaved: onSavedClick,
      controller: controller,
      decoration: InputDecoration(
          label: Text(
            '$label',
            style: TextStyle(color: Colors.grey.shade800),
          ),
          prefixIcon: icon,
          prefixIconColor: Colors.grey.shade800,
          fillColor: const Color.fromARGB(255, 235, 235, 235),
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.shade800)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.shade900, width: 2))),
    );
  }
}
