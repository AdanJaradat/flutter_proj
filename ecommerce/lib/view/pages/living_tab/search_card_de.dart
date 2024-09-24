import 'package:ecommerce/model/living_proc.dart';
import 'package:ecommerce/model/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchCardDetails extends StatelessWidget {
  const SearchCardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Details'),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
      ),
      body: Container(
        color: Color.fromARGB(255, 240, 239, 239),
        child: Center(
          child: Card(
            margin: EdgeInsets.fromLTRB(12, 12, 12, 12),
            child: ListView(
              //!column
              children: [
                Image.asset(
                  args.imgPath,
                  fit: BoxFit.contain,
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
                SizedBox(height: 12),
                Center(child: Text(args.name)),
                SizedBox(height: 12),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(args.desc)),
                SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Room : ${args.room}',
                      style: TextStyle(backgroundColor: Colors.amber[700]),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Category : ${args.category}',
                      style: TextStyle(backgroundColor: Colors.amber[700]),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Price : ${args.price} JD',
                      style: TextStyle(backgroundColor: Colors.amber[700]),
                    ),
                    SizedBox(width: 12),
                    Consumer<LivingProcess>(
                      builder: (context, value, child) {
                        return Text(
                          'Count : ${args.count}',
                          style: TextStyle(backgroundColor: Colors.amber[700]),
                        );
                      },
                      // child: ,
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Consumer<LivingProcess>(
                  builder: (context, value, child) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.amber[700], shape: BoxShape.circle),
                          child: IconButton(
                            onPressed: () {
                              value.addToCounter(args);
                            },
                            icon: Icon(Icons.add),
                          ),
                        ),
                        SizedBox(width: 12),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.amber[700], shape: BoxShape.circle),
                          child: IconButton(
                            onPressed: () {
                              value.removeFromCounter(args);
                            },
                            icon: Icon(Icons.remove),
                          ),
                        ),
                      ],
                    );
                  },
                  // child:,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
