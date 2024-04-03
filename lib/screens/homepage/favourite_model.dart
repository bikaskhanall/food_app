class FavModel {
  int id;
  String? image;
  String? title;
  String? description;
  double? price;

  FavModel(
      {required this.id, this.image, this.price, this.description, this.title});
}

class CartItem {
  final String? id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
  });
}
