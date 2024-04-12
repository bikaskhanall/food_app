import 'package:flutter/material.dart';
import 'package:food_app/models/favourite_model.dart';

class ItemCartProvider extends ChangeNotifier {
  List<FavModel> cartList = [];

  void addToCart(FavModel favouriteModel) {
    cartList.add(favouriteModel);
    notifyListeners();
  }

  void removeFromCart(FavModel favouriteModel) {
    cartList.remove(favouriteModel);
    notifyListeners();
  }

  void clearCart() {
    cartList.clear();
    notifyListeners();
  }
}
