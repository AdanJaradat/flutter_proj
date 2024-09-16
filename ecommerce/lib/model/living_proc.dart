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
        count: 0,
        category: 'SOFAS'),
    Product(
        name: 'side sofa 2',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        count: 0,
        category: 'SOFAS'),
    Product(
        name: 'side sofa 3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        count: 0,
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
        count: 0,
        category: 'TABLE'),
    Product(
        name: 'side table 2',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        count: 0,
        category: 'TABLE'),
    Product(
        name: 'side table 3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        count: 0,
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
        count: 0,
        category: 'RUGS'),
    Product(
        name: 'side rugs 2',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        count: 0,
        category: 'RUGS'),
    Product(
        name: 'side rugs 3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        count: 0,
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
        count: 0,
        category: 'DECOR'),
    Product(
        name: 'side decor 2',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        count: 0,
        category: 'DECOR'),
    Product(
        name: 'side decor 3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Living Room',
        count: 0,
        category: 'DECOR'),
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! out door
    Product(
        name: 'side decor 3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Out Door',
        count: 0,
        category: 'UMBRELLAS'),
    Product(
        name: 'side decor 3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Out Door',
        count: 0,
        category: 'UMBRELLAS'),
    Product(
        name: 'side decor 3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Out Door',
        count: 0,
        category: 'UMBRELLAS'),
    Product(
        name: 'side decor 3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Out Door',
        count: 0,
        category: 'SOFAS'),
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! dining room
    Product(
        name: 'side decor 3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 15.0,
        room: 'Dining Room',
        count: 0,
        category: 'CHAIRS'),
  ];

  //user cart
  List<Product> _userCart = [];
  List<Product> _showSearchResult = [];

  //sofa cart
  // List<Product> _sofaCart = [];

  //get Product list
  List<Product> get Products => products;

  //get user cart
  List<Product> get userCart => _userCart;

  //get search result
  List<Product> get showSearchResult => _showSearchResult;
  set showSearchResult(List<Product> s) => _showSearchResult = s;

  void addToSearch(Product item) {
    _showSearchResult.add(item);
    notifyListeners();
  }

  void clearSearch() {
    _showSearchResult.clear();
    notifyListeners();
  }

  //get category list
  List<Product> categoryList(String category, String room) {
    List<Product> data = [];
    for (int i = 0; i < Products.length; i++) {
      if (category == Products[i].category && room == products[i].room) {
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
    if (_userCart.isNotEmpty) {
      _userCart.remove(item);
      notifyListeners();
    }
  }

  //counter
  void addToCounter(Product item) {
    item.count++;
    notifyListeners();
  }

  //counter
  int? counter(Product item) {
    notifyListeners();
    return item.count;
  }

  //counter
  void removeFromCounter(Product item) {
    if (item.count > 0) {
      item.count--;
      notifyListeners();
    }
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
