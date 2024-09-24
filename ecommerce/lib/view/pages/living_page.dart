import 'package:ecommerce/constant.dart';
import 'package:ecommerce/model/living_proc.dart';
import 'package:ecommerce/model/livingroom.dart';
import 'package:ecommerce/model/product.dart';
import 'package:ecommerce/model/user.dart';
import 'package:ecommerce/view/pages/home.dart';
import 'package:ecommerce/view/pages/living_tab/grid_page.dart';
import 'package:ecommerce/view/pages/living_tab/grid_page2.dart';
import 'package:ecommerce/view/pages/myhome.dart';
import 'package:flutter/material.dart';

class LivingRoom2 extends StatefulWidget {
  const LivingRoom2({super.key});

  @override
  State<LivingRoom2> createState() => _LivingRoom2State();
}

class _LivingRoom2State extends State<LivingRoom2>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  //String title = '';
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  // String selectTitle([String title = 'Living Room']) {
  //   switch (title) {
  //     case 'SOFAS':
  //       setState(() {
  //         //title = t;
  //       });
  //       return 'SOFAS';

  //     case 'TABLE':
  //       //title = t;
  //       return 'TABLE';

  //     case 'RUGS':
  //       //title = t;

  //       return 'RUGS';
  //     case 'DECOR':
  //       //title = t;

  //       return 'DECOR';

  //     default:
  //       // title = t;
  //       return 'Living Room';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // List<Product> data =
    //     Provider.of<LivingProcess>(context, listen: false).Products.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Living Room'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'home',
                    arguments: (User.currentUser['email']));
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => Home()));
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
              Tab(height: 55, text: 'SOFAS'),
              Tab(height: 55, text: 'TABLE'),
              Tab(height: 55, text: 'RUGS'),
              Tab(height: 55, text: 'DECOR'),
            ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          DataGrid2(
            category: 'SOFAS',
            room: 'Living Room',
          ),
          DataGrid2(
            category: 'TABLE',
            room: 'Living Room',
          ),
          DataGrid2(
            category: 'RUGS',
            room: 'Living Room',
          ),
          DataGrid2(
            category: 'DECOR',
            room: 'Living Room',
          ),

          //   Consumer<LivingProcess>(
          //   builder: (context, value, child) => GridView.builder(
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //           crossAxisCount: 2),
          //       itemCount: LivingRoomClass.living['SOFAS'].length,
          //       itemBuilder: (context, index) {
          //         return InkWell(
          //           onTap: () {
          //             Scaffold.of(context)
          //                 .showBottomSheet((BuildContext context) {
          //               return Container(
          //                 height: MediaQuery.of(context).size.height * 0.85,
          //                 width: MediaQuery.of(context).size.width,
          //                 color: const Color.fromARGB(255, 218, 217, 217),
          //                 child: Column(
          //                   children: [
          //                     SizedBox(height: 20),
          //                     Image.asset(
          //                       value.Products[index].imgPath,
          //                       fit: BoxFit.contain,
          //                       height:
          //                           MediaQuery.of(context).size.height * 0.3,
          //                       width: MediaQuery.of(context).size.width * 0.5,
          //                     ),
          //                     SizedBox(height: 20),
          //                     Text(LivingRoomClass.living['SOFAS'][index]
          //                         ['name']),
          //                     SizedBox(height: 20),
          //                     Text(LivingRoomClass.living['SOFAS'][index]
          //                         ['desc']),
          //                     SizedBox(height: 20),
          //                     Container(
          //                       child: Row(
          //                         children: [
          //                           MaterialButton(
          //                             onPressed: () {},
          //                             color: Colors.amber[700],
          //                             child: Text('Add to cart'),
          //                           ),
          //                           Container(
          //                             decoration: BoxDecoration(
          //                               shape: BoxShape.circle,
          //                               color: Colors.amber,
          //                             ),
          //                             child: IconButton(
          //                                 onPressed: () {},
          //                                 icon: Icon(Icons.remove)),
          //                           ),
          //                           Container(
          //                               width: 50,
          //                               height: 50,
          //                               decoration: BoxDecoration(
          //                                 shape: BoxShape.circle,
          //                                 color: Colors.white,
          //                               ),
          //                               child: Center(child: Text('1'))),
          //                           Container(
          //                             decoration: BoxDecoration(
          //                               shape: BoxShape.circle,
          //                               color: Colors.amber,
          //                             ),
          //                             child: IconButton(
          //                                 onPressed: () {},
          //                                 icon: Icon(Icons.add)),
          //                           ),
          //                         ],
          //                       ),
          //                     )
          //                   ],
          //                 ),
          //               );
          //             });
          //           },
          //           child: Card(
          //             child: Column(
          //               children: [
          //                 Expanded(
          //                   flex: 2,
          //                   child: Image.asset(
          //                     'images/sofagrid1.jpg',
          //                     fit: BoxFit.fill,
          //                     width: 190,
          //                     height: 120,
          //                   ),
          //                 ),
          //                 Expanded(
          //                   child: ListTile(
          //                     isThreeLine: true,
          //                     title: Text(LivingRoomClass.living['SOFAS'][index]
          //                         ['name']),
          //                     subtitle:
          //                         Text('${value.Products[index].price} JD'),
          //                     trailing: IconButton(
          //                         onPressed: () {}, icon: Icon(Icons.add)),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         );
          //       }),
          // ),

          // DataGrid(category: 'RUGS'),
          // DataGrid(category: 'DECOR'),
        ],
      ),
    );
  }
}
