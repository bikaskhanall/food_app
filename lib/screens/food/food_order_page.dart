import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/favourite_model.dart';
import 'package:food_app/viewmodel/cart_provider.dart';
import 'package:food_app/viewmodel/home_provider.dart';
import 'package:provider/provider.dart';

class FoodOrderPage extends StatefulWidget {
  const FoodOrderPage({super.key});

  @override
  State<FoodOrderPage> createState() => _FoodOrderPageState();
}

class _FoodOrderPageState extends State<FoodOrderPage> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              arguments['image'],
              height: 350,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            arguments["title"].toString(),
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            arguments["price"].toString(),
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 19.0, right: 19.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 140,
                ),
                Expanded(
                    child: Text(
                  arguments["description"].toString(),
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                )),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text("Added To Cart"),
                action: SnackBarAction(label: "Undo", onPressed: () {}),
              ));
              FavModel data = FavModel(
                id: arguments['id'],
                title: arguments["title".toString()],
                image: arguments["image".toString()],
                description: arguments["description".toString()],
                price: arguments["price"],
              );
              Provider.of<ItemCartProvider>(context, listen: false)
                  .addToCart(data);
            },
            child: const Text("Add To Cart"),
          )
        ],
      ),
    );
  }
}
