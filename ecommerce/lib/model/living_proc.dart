import 'package:ecommerce/model/product.dart';
import 'package:flutter/material.dart';

class LivingProcess extends ChangeNotifier {
  final List<Product> products = [
    Product(
        name: 'side sofa 1',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 17.0,
        room: 'Living Room',
        category: 'SOFAS'),
    Product(
        name: 'side sofa 2',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        category: 'SOFAS'),
    Product(
        name: 'side sofa 3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        category: 'SOFAS'),
    //sofa end
    //table start
    Product(
        name: 'side table 1',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        category: 'TABLE'),
    Product(
        name: 'side table 2',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        category: 'TABLE'),
    Product(
        name: 'side table 3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        category: 'TABLE'),
    //table end
    //rugs start
    Product(
        name: 'side rugs 1',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        category: 'RUGS'),
    Product(
        name: 'side rugs 2',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        category: 'RUGS'),
    Product(
        name: 'side rugs 3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        category: 'RUGS'),
    //rugs end
    //decor start
    Product(
        name: 'side decor 1',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        category: 'DECOR'),
    Product(
        name: 'side decor 2',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        category: 'DECOR'),
    Product(
        name: 'side decor 3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        category: 'DECOR'),
  ];

  //user cart
  List<Product> _userCart = [];
  
  //sofa cart
  // List<Product> _sofaCart = [];

  //get Product list
  List<Product> get Products => products;

  //get user cart
  List<Product> get userCart => _userCart;

  //get category list
  List<Product> categoryList(String category) {
    List<Product> data = [];
    for (int i = 0; i < Products.length; i++) {
      if (category == Products[i].category) {
        data.add(Products[i]);
      }
    }
    return data;
  }

  //add item to cart
  void addItemToCart(Product item) {
    _userCart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Product item) {
    _userCart.remove(item);
    notifyListeners();
  }

  //total price
  double totalPrice() {
    double total = 0;
    for (var i = 0; i < userCart.length; i++) {
      total += userCart[i].price;
    }
    notifyListeners();
    return total;
  }
}
