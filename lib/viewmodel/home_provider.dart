import 'package:flutter/material.dart';
import 'package:food_app/models/favourite_model.dart';

class HomeProvider extends ChangeNotifier {
  List<FavModel> favList = [
    FavModel(
        id: 1,
        image: "assets/images/normal.jpeg",
        title: "Chicken Burger",
        description: "Chikcen burger is chikcen"),
    FavModel(
        id: 2,
        image: "assets/images/premiumburger.jpeg",
        title: "Buff Burger",
        description: "Buff Burger is buff"),
    FavModel(
        id: 3,
        image: "assets/images/coke.jpeg",
        title: "Juice",
        description: "juice is coke "),
    FavModel(
        id: 4,
        image: "assets/images/wraps.jpeg",
        title: "Wrap",
        description: "wraps is wraps"),
  ];

  bool isLiked = false;
  void updateBookmark() {
    isLiked = !isLiked;
    notifyListeners();
  }

  List<FavModel> likedFoodItems = [];

  void likeFoodItem(FavModel foodItem) {
    if (likedFoodItems.contains(foodItem)) {
      likedFoodItems.remove(foodItem);
    } else {
      likedFoodItems.add(foodItem);
    }
    notifyListeners();
  }

  bool isItemLiked(FavModel foodItem) {
    if (likedFoodItems.contains(foodItem)) {
      return true;
    } else {
      return false;
    }
  }
}
