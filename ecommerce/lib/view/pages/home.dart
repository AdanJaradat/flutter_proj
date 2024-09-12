import 'dart:async';

import 'package:ecommerce/view/components/custom_card.dart';
import 'package:ecommerce/view/pages/cart.dart';
import 'package:ecommerce/view/pages/custom_btm_nav_bar.dart';
import 'package:ecommerce/view/pages/custom_drawer.dart';
import 'package:ecommerce/view/pages/livingroom.dart';
import 'package:ecommerce/view/pages/myhome.dart';
import 'package:ecommerce/view/pages/offers.dart';
import 'package:ecommerce/view/pages/order.dart';
import 'package:ecommerce/view/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  //image slider
  //late ScrollController _scrollController;
  //late PageController _pageController;
  //late Timer _timer;
  //int currentIndexOfImgSlider = 0;
  //static Color activeColor = Colors.grey.shade300;
  // List imgUrl = [
  //   'images/bedroom2.jpg',
  //   'images/sofas.jpg',
  //   'images/dining2.jpg',
  //   'images/living.jpg',
  //   'images/out.jpg',
  // ];
  List _navBtmPages = [Offers(), MyOrder(), MyHome(), Settings()];
  int btmIndex = 2;
  selectIndex(int index) {
    setState(() {
      btmIndex = index;
      _navBtmPages[index];
    });
  }

  @override
  void initState() {
    super.initState();
    //_scrollController = ScrollController();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation = CurvedAnimation(
        parent: _animationController, curve: Curves.easeInOutCirc);
    _animationController.forward();

    //image slider
    // _pageController = PageController(initialPage: 0);

    // Set up the timer to change the page every 3 seconds
    // _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
    //   if (currentIndexOfImgSlider < imgUrl.length - 1) {
    //     currentIndexOfImgSlider++;
    //     activeColor = Colors.grey.shade700;
    //   } else {
    //     currentIndexOfImgSlider = 0;
    //   }

    // _pageController.animateToPage(
    //   currentIndexOfImgSlider,
    //   duration: Duration(milliseconds: 600),
    //   curve: Curves.easeInOut,
    // );
    //  _scrollController.animateTo(
    //           0.0,
    //           duration: Duration(seconds: 5),
    //           curve: Curves.easeInOut,
    //         );
    //
    // _scrollController.addListener(() {
    //   activeColor = Colors.grey.shade700;
    // });
    //  });
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
    //_timer.cancel();
    //_pageController.dispose();
    // _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        bottomNavigationBar: CustomBtmNavBar(
          index: btmIndex,
          onTap: selectIndex,
        ),
        appBar: AppBar(
          backgroundColor: Colors.amber[700],
          centerTitle: true,
          title: Hero(
              tag: 'appBarTitle',
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(0, (1 - _animation.value) * 200),
                    //scale: _animation.value,
                    child: Opacity(
                      opacity: _animation.value,
                      child: Text(
                        'Vintage Home Furniture',
                        style: GoogleFonts.lato(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey.shade800),
                      ),
                    ),
                  );
                },
              )),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.notifications_outlined)),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CartPage()));
                },
                icon: Icon(Icons.shopping_cart_outlined)),
          ],
        ),
        drawer: CustomDrawer(),
        body: _navBtmPages[btmIndex]);
  }
}
