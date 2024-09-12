import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  int count = 0;
  double totalPrice = 0;
  addToCart(double price) {
    totalPrice += price;
    count++;
    notifyListeners();
  }

  removeFromCart(double price) {
    totalPrice -= price;
    count--;
    notifyListeners();
  }
}
