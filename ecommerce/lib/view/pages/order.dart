// import 'package:flutter/material.dart';

// class MyOrder extends StatelessWidget {
//   const MyOrder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('data'),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

//! tabBar without DefaultTabController && inherted SingleTickerProviderStateMixin

class _MyOrderState extends State<MyOrder> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab Bar without DefaultTabController '),
        bottom: TabBar(
            controller: tabController,
            indicatorColor: Colors.amber,
            indicatorWeight: 10,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.black,
            labelStyle: const TextStyle(fontSize: 30),
            unselectedLabelStyle: const TextStyle(fontSize: 10),
            tabs: const [
              Tab(
                // child: Text('Laptop'),
                //iconMargin: EdgeInsets.all(15),
                icon: Icon(Icons.laptop),
                text: 'Laptop',
              ),
              Tab(
                //child: Text('Mobile'),
                //iconMargin: EdgeInsets.all(15),
                icon: Icon(Icons.mobile_friendly),
                text: 'Mobile',
              ),
              Tab(
                //child: Text('PC'),
                //iconMargin: EdgeInsets.all(15),
                icon: Icon(Icons.view_compact_alt_outlined),
                text: 'PC',
              ),
            ]),
      ),
      body: TabBarView(controller: tabController, children: [
        Column(
          children: [
            MaterialButton(
                color: Colors.red,
                child: const Text('go to PC'),
                onPressed: () {
                  tabController!.animateTo(2);
                }),
            const Text('Laptop Page'),
          ],
        ),
        const Text('Mobile Page'),
        const Text('PC Page'),
      ]),
    );
  }
}
