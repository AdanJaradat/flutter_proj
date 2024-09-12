// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce/model/living_proc.dart';
import 'package:ecommerce/model/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataGrid2 extends StatelessWidget {
  const DataGrid2({
    Key? key,
    required this.category,
  }) : super(key: key);
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 20, 12, 8),
      child: Consumer<LivingProcess>(builder: (context, value, child) {
        List<Product> data = value.categoryList(category);
        return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Scaffold.of(context).showBottomSheet((BuildContext context) {
                    return Container(
                      //margin: const EdgeInsets.fromLTRB(12, 20, 12, 8),
                      height: MediaQuery.of(context).size.height * 0.85,
                      width: MediaQuery.of(context).size.width,
                      color: const Color.fromARGB(255, 218, 217, 217),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20),
                          Image.asset(
                            data[index].imgPath,
                            fit: BoxFit.contain,
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.5,
                          ),
                          const SizedBox(height: 20),
                          Text(data[index].name),
                          const SizedBox(height: 20),
                          Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 22),
                              child: Text(data[index].desc)),
                          const SizedBox(height: 35), //editing
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 22),
                            child: Row(
                              children: [
                                MaterialButton(
                                  onPressed: () {},
                                  color: Colors.amber[700],
                                  child: Text('Add to cart'),
                                ),
                                const SizedBox(width: 35),
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.amber,
                                  ),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.remove)),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Center(child: Text('1'))),
                                const SizedBox(width: 10),
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
                        child: Container(
                          margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Image.asset(
                            data[index].imgPath,
                            fit: BoxFit.fill,
                            width: 180,
                            height: 100,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ListTile(
                          isThreeLine: true,
                          title: Text(
                            data[index].name,
                            style: TextStyle(fontSize: 12),
                          ),
                          subtitle: Text(
                            '${data[index].price} JD',
                            style: TextStyle(fontSize: 12),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              Provider.of<LivingProcess>(context, listen: false)
                                  .addItemToCart(data[index]);
                              //value.addItemToCart(data[index]);
                            },
                            icon: Icon(Icons.add),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      }),
    );
  }
}
