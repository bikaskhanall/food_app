import 'package:flutter/material.dart';
import 'package:food_app/screens/homepage/favourite_model.dart';
import 'package:food_app/service/user_provider.dart';
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
                favModel.image ?? "assets/image/panda.jpg",
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(favModel.title ?? "data"),
                Row(
                  children: [
                    Chip(
                      label: Text(
                        "Order".toUpperCase(),
                      ),
                      backgroundColor: Colors.blue,
                      side: BorderSide.none,
                    ),
                    Consumer<BookmarkProvider>(
                        builder: (context, bookmarkprovider, child) {
                      return GestureDetector(
                        child: Icon(bookmarkprovider.isItemLiked(favModel)
                            ? Icons.heart_broken
                            : Icons.heart_broken_outlined),
                        onTap: () {
                          bookmarkprovider.likeFoodItem(favModel);
                          // bookmarkprovider.updateBookmark();

                          // isLiked = !isLiked;

                          // setState(() {});
                          // print(isLiked);
                        },
                      );
                    }),
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
