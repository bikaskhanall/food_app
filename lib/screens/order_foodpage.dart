import 'package:flutter/material.dart';
import 'package:food_app/service/user_provider.dart';
import 'package:provider/provider.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text(
          "Cart page",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Consumer<BookmarkProvider>(
              builder: (context, bookmarkprovider, child) {
            return GestureDetector(
              child: Icon(bookmarkprovider.isLiked
                  ? Icons.heart_broken
                  : Icons.heart_broken_outlined),
              onTap: () {
                bookmarkprovider.updateBookmark();

                // isLiked = !isLiked;

                // setState(() {});
                // print(isLiked);
              },
            );
          }),
        ],
      ),
    );
  }
}
