import 'package:ecommerce/model/user.dart';
import 'package:ecommerce/view/pages/living_tab/grid_page2.dart';
import 'package:ecommerce/view/pages/myhome.dart';
import 'package:flutter/material.dart';

class Diningroom extends StatefulWidget {
  const Diningroom({super.key});

  @override
  State<Diningroom> createState() => _DiningroomState();
}

class _DiningroomState extends State<Diningroom>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dining Room'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'home',
                    arguments: (User.currentUser['email']));
              },
              icon: Icon(Icons.home_outlined)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
        ],
        bottom: TabBar(
            controller: _tabController,
            //unselectedLabelColor: Colors.amber[100],
            indicatorColor: Colors.grey[800],
            labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800]),
            unselectedLabelStyle:
                TextStyle(fontSize: 19, color: Colors.grey[700]),
            isScrollable: true,
            onTap: (value) {},
            tabs: [
              Tab(height: 55, text: 'DINING TABLE'),
              Tab(height: 55, text: 'CHAIRS'),
              Tab(height: 55, text: 'LIGHTING'),
              Tab(height: 55, text: 'DECOR'),
            ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          DataGrid2(
            category: 'TABLE',
            room: 'Dining Room',
          ),
          DataGrid2(
            category: 'CHAIRS',
            room: 'Dining Room',
          ),
          DataGrid2(
            category: 'LIGHTING',
            room: 'Dining Room',
          ),
          DataGrid2(
            category: 'DECOR',
            room: 'Dining Room',
          ),
        ],
      ),
    );
  }
}
