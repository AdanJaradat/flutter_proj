import 'dart:async';

import 'package:ecommerce/view/components/custom_card.dart';
import 'package:ecommerce/view/pages/bedroom.dart';
import 'package:ecommerce/view/pages/custom_btm_nav_bar.dart';
import 'package:ecommerce/view/pages/custom_drawer.dart';
import 'package:ecommerce/view/pages/diningroom.dart';
import 'package:ecommerce/view/pages/living_page.dart';
//import 'package:ecommerce/view/pages/livingroom.dart';
import 'package:ecommerce/view/pages/offers.dart';
import 'package:ecommerce/view/pages/order.dart';
import 'package:ecommerce/view/pages/outdoor.dart';
import 'package:ecommerce/view/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  // late AnimationController _animationController;
  // late Animation<double> _animation;
  //image slider
  //late ScrollController _scrollController;
  late PageController _pageController;
  late Timer _timer;
  int currentIndexOfImgSlider = 0;
  static Color activeColor = Colors.grey.shade300;
  List imgUrl = [
    'images/bedroom2.jpg',
    'images/sofas.jpg',
    'images/dining2.jpg',
    'images/living.jpg',
    'images/out.jpg',
  ];
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
    // _animationController =
    //     AnimationController(vsync: this, duration: Duration(seconds: 3));
    // _animation = CurvedAnimation(
    //     parent: _animationController, curve: Curves.easeInOutCirc);
    // _animationController.forward();

    //image slider
    _pageController = PageController(initialPage: 0);

    // Set up the timer to change the page every 3 seconds
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (currentIndexOfImgSlider < imgUrl.length - 1) {
        currentIndexOfImgSlider++;
        activeColor = Colors.grey.shade700;
      } else {
        currentIndexOfImgSlider = 0;
      }

      _pageController.animateToPage(
        currentIndexOfImgSlider,
        duration: Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
      //  _scrollController.animateTo(
      //           0.0,
      //           duration: Duration(seconds: 5),
      //           curve: Curves.easeInOut,
      //         );
      //
      // _scrollController.addListener(() {
      //   activeColor = Colors.grey.shade700;
      // });
    });
  }

  @override
  void dispose() {
    super.dispose();
    //_animationController.dispose();
    _timer.cancel();
    _pageController.dispose();
    // _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 240, 239, 239),
   
      child: ListView(
        children: [
          const SizedBox(height: 10),
          Container(
            margin: EdgeInsets.all(8),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.all(15),
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
                controller: _pageController,
                itemCount: imgUrl.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      imgUrl[currentIndexOfImgSlider],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  );
                }),
          ),
          //const SizedBox(height: 3),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.1,
              child: ListView.builder(
                  //  controller: _scrollController,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: imgUrl.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.width * 0.1,
                        // color: Colors.red,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              currentIndexOfImgSlider = index;
                              //activeColor = Colors.grey.shade700;
                            });
                          },
                          icon: Icon(Icons.circle),
                          iconSize: 15,
                          color: activeColor,
                        ),
                      ),
                    );
                  }),
            ),
          ),
          const SizedBox(height: 30),
          CustomCard(
            imgUrl: 'images/livcard.jpg',
            title: 'Living Room',
            onTapCard: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LivingRoom2()));
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => LivingRoom()));
            },
          ),
          const SizedBox(height: 30),
          CustomCard(
            imgUrl: 'images/diningcard.jpg',
            title: 'Dining Room',
            onTapCard: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Diningroom()));
            },
          ),
          const SizedBox(height: 30),
          CustomCard(
            imgUrl: 'images/outcard.jpg',
            title: 'Out Door',
            onTapCard: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Outdoor()));
            },
          ),
          const SizedBox(height: 30),
          CustomCard(
            imgUrl: 'images/bedcard.jpg',
            title: 'Bed Room',
            onTapCard: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Bedroom()));
            },
          ),
        ],
      ),
    );
  }
}
