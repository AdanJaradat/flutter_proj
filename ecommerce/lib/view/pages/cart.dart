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
      body: Consumer<LivingProcess>(
        builder: (context, value, child) {
          return Text(value.userCart[0].name);
        },
      ),
    );
  }
}
