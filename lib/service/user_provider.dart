import 'package:flutter/material.dart';

class BookmarkProvider extends ChangeNotifier {
  bool isLiked = false;
  // List <Map> = [];

  void updateBookmark() {
    isLiked = !isLiked;
    notifyListeners();
  }
}

class CartProvider extends ChangeNotifier {
  // final List<Items> _cartItems = [];
  // UnmodifiableListView get cartItems => _cartItems;
}
