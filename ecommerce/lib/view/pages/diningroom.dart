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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyHome()));
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
          Center(child: Text('Car Tab Content')),
          // GridView.builder(
          //     gridDelegate:
          //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          //     itemCount: LivingRoomClass.living['SOFAS'].length,
          //     itemBuilder: (context, index) {
          //       return InkWell(
          //         onTap: () {
          //           Scaffold.of(context)
          //               .showBottomSheet((BuildContext context) {
          //             return Container(
          //               // margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
          //               height: MediaQuery.of(context).size.height * 0.85,
          //               width: MediaQuery.of(context).size.width,
          //               //height: 250,
          //               color: const Color.fromARGB(255, 218, 217, 217),
          //               child: Column(
          //                 children: [
          //                   SizedBox(height: 20),
          //                   Image.asset(
          //                     'images/sofagrid1.jpg',
          //                     fit: BoxFit.contain,
          //                     height: MediaQuery.of(context).size.height * 0.3,
          //                     width: MediaQuery.of(context).size.width * 0.5,
          //                   ),
          //                   SizedBox(height: 20),
          //                   Text(
          //                       LivingRoomClass.living['SOFAS'][index]['name']),
          //                   SizedBox(height: 20),
          //                   Text(
          //                       LivingRoomClass.living['SOFAS'][index]['desc']),
          //                   SizedBox(height: 20),
          //                   Container(
          //                     child: Row(
          //                       children: [
          //                         MaterialButton(
          //                           onPressed: () {},
          //                           color: Colors.amber[700],
          //                           child: Text('Add to cart'),
          //                         ),
          //                         Container(
          //                           decoration: BoxDecoration(
          //                             shape: BoxShape.circle,
          //                             color: Colors.amber,
          //                           ),
          //                           child: IconButton(
          //                               onPressed: () {},
          //                               icon: Icon(Icons.remove)),
          //                         ),
          //                         Container(
          //                             width: 50,
          //                             height: 50,
          //                             decoration: BoxDecoration(
          //                               shape: BoxShape.circle,
          //                               color: Colors.white,
          //                             ),
          //                             child: Center(child: Text('1'))),
          //                         Container(
          //                           decoration: BoxDecoration(
          //                             shape: BoxShape.circle,
          //                             color: Colors.amber,
          //                           ),
          //                           child: IconButton(
          //                               onPressed: () {},
          //                               icon: Icon(Icons.add)),
          //                         ),
          //                       ],
          //                     ),
          //                   )
          //                 ],
          //               ),
          //             );
          //           });
          //         },
          //         child: Card(
          //           child: Column(
          //             children: [
          //               Expanded(
          //                 flex: 2,
          //                 child: Image.asset(
          //                   'images/sofagrid1.jpg',
          //                   fit: BoxFit.fill,
          //                   width: 190,
          //                   height: 120,
          //                 ),
          //               ),
          //               Expanded(
          //                 child: ListTile(
          //                   isThreeLine: true,
          //                   title: Text(
          //                       LivingRoomClass.living['SOFAS'][index]['name']),
          //                   subtitle: Text(
          //                       '${LivingRoomClass.living['SOFAS'][index]['price']} JD'),
          //                   trailing: IconButton(
          //                       onPressed: () {}, icon: Icon(Icons.add)),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       );
          //     }),

          Center(child: Text('Transit Tab Content')),
          Center(child: Text('Bike Tab Content')),
          Center(child: Text('Bike Tab Content')),
        ],
      ),
    );
  }

}
