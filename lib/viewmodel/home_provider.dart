import 'package:flutter/material.dart';
import 'package:food_app/models/favourite_model.dart';

class HomeProvider extends ChangeNotifier {
  List<FavModel> favList = [
    FavModel(
        id: 1,
        image: "assets/images/normal.jpeg",
        title: "Chicken Burger",
        price: 10,
        description:
            "Crispy seasoned chicken breast topped with ,mandatory melted cheese, piled onto soft rolls with onion, avocado, lettuce, tomato and garlic mayo."),
    FavModel(
      id: 2,
      image: "assets/images/premiumburger.jpeg",
      title: "Buff Burger",
      price: 12,
      description:
          "The recipe is simple & is based on the purity & amazing taste of the ingredients & especially our “Pulled Buffalo” with slow-cooked water buffalo meat from “Kerkini Farm”",
    ),
    FavModel(
        id: 3,
        image: "assets/images/coke.jpeg",
        title: "Coke",
        price: 7,
        description:
            "Coca-Cola, or Coke, is a carbonated soft drink with a cola flavor manufactured by the Coca-Cola Company. In 2013, Coke products were sold in over 200 countries worldwide, with consumers drinking more than 1.8 billion company beverage servings each day."),
    FavModel(
        id: 4,
        image: "assets/images/wraps.jpeg",
        title: "Wrap",
        price: 5,
        description:
            "A wrap is a culinary dish made with a soft flatbread rolled around a filling."),
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








// class Cart with ChangeNotifier {
//   Map<String, CartItem> _items = {};

//   Map<String, CartItem> get items {
//     return {..._items};
//   }

//   int get itemCount {
//     return _items.length;
//   }

//   double get totalAmount {
//     var total = 0.0;
//     _items.forEach((key, cartItem) {
//       total += cartItem.price * cartItem.quantity;
//     });
//     return total;
//   }

//   void addItem(
//     String productId,
//     double price,
//     String title,
//   ) {
//     if (_items.containsKey(productId)) {
//       // change quantity...
//       _items.update(
//         productId,
//         (existingCartItem) => CartItem(
//           id: existingCartItem.id,
//           title: existingCartItem.title,
//           price: existingCartItem.price,
//           quantity: existingCartItem.quantity + 1,
//         ),
//       );
//     } else {
//       _items.putIfAbsent(
//         productId,
//         () => CartItem(
//           id: DateTime.now().toString(),
//           title: title,
//           price: price,
//           quantity: 1,
//         ),
//       );
//     }
//     notifyListeners();
//   }

//   void removeItem(String productId) {
//     _items.remove(productId);
//     notifyListeners();
//   }

//   void removeSingleItem(String productId) {
//     if (!items.containsKey(productId)) {
//       return;
//     }
//     if (_items[productId]!.quantity > 1) {
//       _items.update(
//           productId,
//           (existingCartItem) => CartItem(
//               id: existingCartItem.id,
//               title: existingCartItem.title,
//               price: existingCartItem.price,
//               quantity: existingCartItem.quantity - 1));
//     } else {
//       _items.remove(productId);
//     }
//     notifyListeners();
//   }

//   void clear() {
//     _items = {};
//     notifyListeners();
//   }
// }
