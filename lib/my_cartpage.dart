import 'package:flutter/material.dart';
import 'package:food_app/screens/homepage/favourite_model.dart';
import 'package:food_app/service/user_provider.dart';
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
        title: Text("Add to Cart"),
      ),
      body: Column(
        children: [
          // Consumer<CartItem>(
          //               builder: (context, CartItem, child) {
          //             return GestureDetector(
          //               child: Icon(bookmarkprovider.isItemLiked(favModel)
          //                   ? Icons.heart_broken
          //                   : Icons.heart_broken_outlined),
          //               onTap: () {
          //                 bookmarkprovider.likeFoodItem(favModel);
          //                 // bookmarkprovider.updateBookmark();

          //                 // isLiked = !isLiked;

          //                 // setState(() {});
          //                 // print(isLiked);
          //               },
          //             );
          //           }),
        ],
      ),
    );
  }
}
