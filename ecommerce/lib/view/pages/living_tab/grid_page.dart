// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce/model/livingroom.dart';
import 'package:flutter/material.dart';

class DataGrid extends StatelessWidget {
  const DataGrid({
    Key? key,
    //required this.data,
    required this.category,
    // required this.desc,
    // required this.imgStr,
    // required this.price,
  }) : super(key: key);
  //final List data;
  final String category;
  // final String desc;
  // final String imgStr;
  // final double price;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(12, 20, 12, 8),
      child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: LivingRoomClass.living[category].length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Scaffold.of(context).showBottomSheet((BuildContext context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.85,
                    width: MediaQuery.of(context).size.width,
                    color: const Color.fromARGB(255, 218, 217, 217),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Image.asset(
                          LivingRoomClass.living[category][index]['img'][0],
                          fit: BoxFit.contain,
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        const SizedBox(height: 20),
                        Text(LivingRoomClass.living[category][index]['name']),
                        const SizedBox(height: 20),
                        Text(LivingRoomClass.living[category][index]['desc']),
                        const SizedBox(height: 20),
                        Container(
                          child: Row(
                            children: [
                              MaterialButton(
                                onPressed: () {},
                                color: Colors.amber[700],
                                child: Text('Add to cart'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.amber,
                                ),
                                child: IconButton(
                                    onPressed: () {}, icon: Icon(Icons.remove)),
                              ),
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Center(child: Text('1'))),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.amber,
                                ),
                                child: IconButton(
                                    onPressed: () {}, icon: Icon(Icons.add)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                });
              },
              child: Card(
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        LivingRoomClass.living[category][index]['img'][0],
                        fit: BoxFit.fill,
                        width: 190,
                        height: 120,
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        isThreeLine: true,
                        title: Text(
                            LivingRoomClass.living[category][index]['name']),
                        subtitle: Text(
                            '${LivingRoomClass.living[category][index]['price']} JD'),
                        trailing:
                            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
