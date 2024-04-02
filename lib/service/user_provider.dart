import 'dart:ffi';

import 'package:flutter/material.dart';

class BookmarkProvider extends ChangeNotifier {
  bool isLiked = false;

  void updateBookmark() {
    isLiked = !isLiked;
    notifyListeners();
  }
}

class NumberlistProvider extends ChangeNotifier {}

class CartProvider extends ChangeNotifier {}
