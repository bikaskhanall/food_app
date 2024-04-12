import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/cart_model.dart';
import 'package:food_app/models/favourite_model.dart';
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
        title: const Text("Cart "),
        leading: IconButton(
            onPressed: () =>
                Provider.of<ItemCartProvider>(context, listen: false)
                    .clearCart(),
            icon: const Icon(CupertinoIcons.delete)),
      ),
      body: Column(
        children: [
          Consumer<ItemCartProvider>(builder: (context, cart, child) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: cart.cartList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(cart.cartList[index].image!),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cart.cartList[index].title!,
                      ),
                      Text(
                        cart.cartList[index].price!.toString(),
                      ),
                    ],
                  ),
                );
              },
            );
          }),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.all(24),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pay Now',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
