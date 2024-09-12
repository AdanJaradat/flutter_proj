// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Product {
  String name;
  String desc;
  String imgPath;
  String room;
  String category;
  double price;
  //Color color;
  Product({
    required this.name,
    required this.desc,
    required this.imgPath,
    required this.price,
    required this.room,
    required this.category,
    //required this.color,
  });
}
