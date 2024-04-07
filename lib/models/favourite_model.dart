class FavModel {
  int? id;
  String? image;
  String? title;
  String? description;
  double? price;

  FavModel(
      {required this.id, this.image, this.price, this.description, this.title});
}

final List<Map<String, dynamic>> gridMap = [
  {
    "id": 1,
    "image": "assets/images/normal.jpeg",
    "title": "Chicken Burger",
    "price": "\$10",
    "description":
        "Crispy seasoned chicken breast topped with ,mandatory melted cheese, piled onto soft rolls with onion, avocado, lettuce, tomato and garlic mayo.",
  },
  {
    "id": 2,
    "image": "assets/images/premiumburger.jpeg",
    "title": "Buff Burger",
    "price": "\$12",
    "description":
        "The recipe is simple & is based on the purity & amazing taste of the ingredients & especially our “Pulled Buffalo” with slow-cooked water buffalo meat from Kerkini Farm "
  },
  {
    "id": 3,
    "image": "assets/images/coke.jpeg",
    "title": "Coke",
    "price": "\$5",
    "description":
        "Coca-Cola, or Coke, is a carbonated soft drink with a cola flavor manufactured by the Coca-Cola Company. In 2013, Coke products were sold in over 200 countries worldwide, with consumers drinking more than 1.8 billion company beverage servings each day."
  },
  {
    "id": 4,
    "image": "assets/images/wraps.jpeg",
    "title": "Wrap",
    "price": "\$7",
    "description":
        "A wrap is a culinary dish made with a soft flatbread rolled around a filling."
  }
];
