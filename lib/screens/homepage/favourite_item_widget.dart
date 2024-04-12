import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/favourite_model.dart';
import 'package:food_app/viewmodel/home_provider.dart';
import 'package:provider/provider.dart';

class FavouriteItemmWidget extends StatelessWidget {
  const FavouriteItemmWidget({super.key, required this.favModel});

  final FavModel favModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          "/foodOrderPage",
          arguments: {
            'image': favModel.image,
            'title': favModel.title,
            'price': favModel.price,
            'description': favModel.description,
          },
        );
      },
      child: Container(
        color: const Color.fromRGBO(204, 204, 204, 10),
        margin: const EdgeInsets.symmetric(horizontal: 18),
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            SizedBox(
              height: 100,
              width: 110,
              child: Image.asset(
                favModel.image ?? "N/A",
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(favModel.title ?? "N/A"),
                Row(
                  children: [
                    Chip(
                      label: Text(
                        "Order".toUpperCase(),
                      ),
                      backgroundColor: Colors.blue,
                      side: BorderSide.none,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Consumer<HomeProvider>(
                        builder: (context, bookmarkprovider, child) {
                      return GestureDetector(
                        child: Icon(bookmarkprovider.isItemLiked(favModel)
                            ? CupertinoIcons.heart_fill
                            : CupertinoIcons.heart),
                        onTap: () {
                          bookmarkprovider.likeFoodItem(favModel);
                        },
                      );
                    }),
                    const SizedBox(
                      width: 3,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Chip(
                        label: Text(
                          "popular".toUpperCase(),
                        ),
                        backgroundColor: const Color.fromRGBO(252, 173, 82, 1),
                        side: BorderSide.none,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
