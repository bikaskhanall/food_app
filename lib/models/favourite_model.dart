class FavModel {
  int? id;
  String? image;
  String? title;
  String? description;
  double? price;
  FavModel({this.id, this.image, this.description, this.title, this.price});
}

List<FavModel> favList = [
  FavModel(
      id: 1,
      image: "assets/images/normal.jpeg",
      title: "Chicken Burger",
      description:
          "Super tasty, quick, easy Chicken Burger recipe made with seasoned, crispy chicken breast. Made with garlic mayo, avocado, cheese, ...",
      price: 10.99),
  FavModel(
      id: 2,
      image: "assets/images/premiumburger.jpeg",
      title: "Buff Burger",
      description:
          "The recipe is simple & is based on the purity & amazing taste of the ingredients & especially our “Pulled Buffalo” with slow-cooked water buffalo meat from “Kerkini Farm”.",
      price: 11.01),
  FavModel(
      id: 3,
      image: "assets/images/coke.jpeg",
      title: "Juice",
      description:
          "Coca-Cola, or Coke, is a carbonated soft drink with a cola flavor manufactured by the Coca-Cola Company. In 2013, Coke products were sold in over 200 countries worldwide, with consumers drinking more than 1.8 billion company beverage servings each day.",
      price: 4.99),
  FavModel(
      id: 4,
      image: "assets/images/wraps.jpeg",
      title: "Wrap",
      description:
          "A wrap is a culinary dish made with a soft flatbread rolled around a filling. Wrap. Smoked chicken and avocado wrap. Type. Sandwich.",
      price: 8.69),
  FavModel(
      id: 5,
      image: "assets/images/oats.jpg",
      title: "Oats",
      description:
          "Oats are used for human consumption as oatmeal, including as steel cut oats or rolled oats. Oats are a nutrient-rich food associated with lower blood",
      price: 6.99),
];
