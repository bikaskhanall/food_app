import 'package:flutter/material.dart';
import 'package:food_app/viewmodel/cart_provider.dart';
import 'package:provider/provider.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add to Cart"),
      ),
      body: Consumer<ItemCartProvider>(builder: (context, cart, child) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: cart.cartList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.blue,
              child: Text(cart.cartList[index]),
            );
          },
        );
      }),
    );
  }
}
