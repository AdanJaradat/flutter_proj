import 'package:ecommerce/model/living_proc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
      ),
      body: Consumer<LivingProcess>(
        builder: (context, value, child) {
          return Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 230, 228, 228),
            ),
            child: value.userCart.isEmpty
                ? Center(
                    child: Text('cart is empty'),
                  )
                : Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: ListView.builder(
                          itemCount: value.userCart.length,
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 10,
                              child: ListTile(
                                leading:
                                    Image.asset(value.userCart[index].imgPath),
                                title: Text(value.userCart[index].name),
                                subtitle: Text(
                                    'Price : ${value.userCart[index].price}      Count : ${value.userCart[index].count}'),
                                trailing: IconButton(
                                    onPressed: () {
                                      value.removeItemFromCart(
                                          value.userCart[index]);
                                    },
                                    icon: Icon(Icons.delete_outline)),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.amber[700],
                          child: Text('Pay'),
                        ),
                      )
                    ],
                  ),
          );
          //return Text(value.userCart[0].name);
        },
      ),
    );
  }
}
