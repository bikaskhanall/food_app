import 'package:flutter/material.dart';
import 'package:food_app/screens/homepage/favourite_model.dart';

class BookmarkProvider extends ChangeNotifier {
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

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }

  void addItem(
    String productId,
    double price,
    String title,
  ) {
    if (_items.containsKey(productId)) {
      // change quantity...
      _items.update(
        productId,
        (existingCartItem) => CartItem(
          id: existingCartItem.id,
          title: existingCartItem.title,
          price: existingCartItem.price,
          quantity: existingCartItem.quantity + 1,
        ),
      );
    } else {
      _items.putIfAbsent(
        productId,
        () => CartItem(
          id: DateTime.now().toString(),
          title: title,
          price: price,
          quantity: 1,
        ),
      );
    }
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void removeSingleItem(String productId) {
    if (!items.containsKey(productId)) {
      return;
    }
    if (_items[productId]!.quantity > 1) {
      _items.update(
          productId,
          (existingCartItem) => CartItem(
              id: existingCartItem.id,
              title: existingCartItem.title,
              price: existingCartItem.price,
              quantity: existingCartItem.quantity - 1));
    } else {
      _items.remove(productId);
    }
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}






// class CartProvider extends ChangeNotifier {
 
// }
//   int get itemCount {
//     return _cartItems.length;
//   }

//   List<FavModel> _cartItems = [];
//   List<FavModel> get cartItems => _cartItems;
//   void addtoCart(FavModel cartItem) {
//     _cartItems.add(cartItem);
//   }

//   int getProductQuantity(FavModel) {
//     int quantity = 0;
//     for (FavModel item in _cartItems) {
//       if (item.product.id == FavModel) {
//         quantity += item.quantity;
//       }
//     }
//     return quantity;
//   }

//   double get totalAmount {
//     var total = 0.0;
//     _cartItems.forEach((key, cartItem) {
//       total += cartItem.price * cartItem.quantity;
//     });

//     return total;
//   }

//   void removeItem(String productId) {
//     _cartItems.remove(productId);
//     notifyListeners();
//   }

//   void clear() {
//     _cartItems = {};
//     notifyListeners();
//   }
// }
