import 'package:ecommerce/view/pages/myhome.dart';
import 'package:flutter/material.dart';

class Outdoor extends StatefulWidget {
  const Outdoor({super.key});

  @override
  State<Outdoor> createState() => _OutdoorState();
}

class _OutdoorState extends State<Outdoor> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Out Door'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyHome()));
              },
              icon: Icon(Icons.home_outlined)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
        ],
        bottom: TabBar(
            controller: _tabController,
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
              Tab(height: 55, text: 'SOFAS'),
              Tab(height: 55, text: 'CHAIRS'),
              Tab(height: 55, text: 'TABLES'),
              Tab(height: 55, text: 'PLANTS'),
              Tab(height: 55, text: 'RUGS'),
              Tab(height: 55, text: 'UMBRELLAS'),
            ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text('Car Tab Content')),
          Center(child: Text('Transit Tab Content')),
          Center(child: Text('Bike Tab Content')),
          Center(child: Text('Bike Tab Content')),
          Center(child: Text('Bike Tab Content')),
          Center(child: Text('Bike Tab Content')),
        ],
      ),
    );
  }
}
