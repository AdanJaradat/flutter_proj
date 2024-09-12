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
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 230, 228, 228),
        ),
        child: Center(
          child: Text('No Orders'),
        ),
      ),
    );
  }
}
