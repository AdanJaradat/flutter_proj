import 'package:ecommerce/model/product.dart';
import 'package:flutter/material.dart';

class LivingProcess extends ChangeNotifier {
  final List<Product> products = [
    Product(
        name: 'sofa#1',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/sofagrid1.jpg',
        price: 170.0,
        room: 'Living Room',
        count: 0,
        category: 'SOFAS'),
    Product(
        name: 'sofa#2',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/bsofa.jpg',
        price: 150.0,
        room: 'Living Room',
        count: 0,
        category: 'SOFAS'),
    Product(
        name: 'sofa#3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/rsofa.jpg',
        price: 200.0,
        room: 'Living Room',
        count: 0,
        category: 'SOFAS'),
    Product(
        name: 'sofa#4',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/rrsof.jpg',
        price: 250.0,
        room: 'Living Room',
        count: 0,
        category: 'SOFAS'),
    Product(
        name: 'sofa#5',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/gsof.jpg',
        price: 300.0,
        room: 'Living Room',
        count: 0,
        category: 'SOFAS'),
    //sofa end
    //table start
    Product(
        name: 'table#1',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/wtable.jpg',
        price: 150.0,
        room: 'Living Room',
        count: 0,
        category: 'TABLE'),
    Product(
        name: 'table#2',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/table1.jpg',
        price: 100.0,
        room: 'Living Room',
        count: 0,
        category: 'TABLE'),
    Product(
        name: 'table#3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/table2.jpg',
        price: 200.0,
        room: 'Living Room',
        count: 0,
        category: 'TABLE'),
    Product(
        name: 'table#4',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/table3.jpg',
        price: 150.0,
        room: 'Living Room',
        count: 0,
        category: 'TABLE'),
    Product(
        name: 'table#5',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/table4.jpg',
        price: 400.0,
        room: 'Living Room',
        count: 0,
        category: 'TABLE'),
    //table end
    //rugs start
    Product(
        name: 'rug#1',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/rug1.jpg',
        price: 400.0,
        room: 'Living Room',
        count: 0,
        category: 'RUGS'),
    Product(
        name: 'rug#2',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/rug2.jpg',
        price: 450.0,
        room: 'Living Room',
        count: 0,
        category: 'RUGS'),
    Product(
        name: 'rug#3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/rug3.jpg',
        price: 150.0,
        room: 'Living Room',
        count: 0,
        category: 'RUGS'),
    Product(
        name: 'rug#4',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/rug4.jpg',
        price: 250.0,
        room: 'Living Room',
        count: 0,
        category: 'RUGS'),
    Product(
        name: 'rug#5',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/rug5.jpg',
        price: 300.0,
        room: 'Living Room',
        count: 0,
        category: 'RUGS'),
    //rugs end
    //decor start
    Product(
        name: 'decor#1',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/acc1.jpg',
        price: 15.0,
        room: 'Living Room',
        count: 0,
        category: 'DECOR'),
    Product(
        name: 'decor#2',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/acc2.jpg',
        price: 50.0,
        room: 'Living Room',
        count: 0,
        category: 'DECOR'),
    Product(
        name: 'decor#3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/acc3.jpg',
        price: 15.0,
        room: 'Living Room',
        count: 0,
        category: 'DECOR'),
    Product(
        name: 'decor#4',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/acc4.jpg',
        price: 70.0,
        room: 'Living Room',
        count: 0,
        category: 'DECOR'),
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! out door
    Product(
        name: 'umbrella#1',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/umb1.jpg',
        price: 150.0,
        room: 'Out Door',
        count: 0,
        category: 'UMBRELLAS'),
    Product(
        name: 'umbrella#2',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/umb2.jpg',
        price: 150.0,
        room: 'Out Door',
        count: 0,
        category: 'UMBRELLAS'),
    Product(
        name: 'umbrella#3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/umb3.jpg',
        price: 150.0,
        room: 'Out Door',
        count: 0,
        category: 'UMBRELLAS'),
    Product(
        name: 'plant#1',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/plan1.jpg',
        price: 15.0,
        room: 'Out Door',
        count: 0,
        category: 'PLANTS'),
    Product(
        name: 'plant#2',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/plan2.jpg',
        price: 15.0,
        room: 'Out Door',
        count: 0,
        category: 'PLANTS'),
    Product(
        name: 'sofa#2',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/osofa1.jpg',
        price: 150.0,
        room: 'Out Door',
        count: 0,
        category: 'SOFAS'),
    Product(
        name: 'sofa#3',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/out.jpg',
        price: 150.0,
        room: 'Out Door',
        count: 0,
        category: 'SOFAS'),
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! dining room
    Product(
        name: 'table#1',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/d1.jpg',
        price: 200.0,
        room: 'Dining Room',
        count: 0,
        category: 'TABLE'),
    Product(
        name: 'table#2',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/d2.jpg',
        price: 200.0,
        room: 'Dining Room',
        count: 0,
        category: 'TABLE'),
    Product(
        name: 'chair#1',
        desc:
            'This modern coffee table is the perfect fit for any contemporary living room! With its sleek MDF design, it complements your furniture and décor for a stylish and practical addition to your home. Add a bit of flair with this modern coffee table!',
        imgPath: 'images/ch1.jpg',
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
