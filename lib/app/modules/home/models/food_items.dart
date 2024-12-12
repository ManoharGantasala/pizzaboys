class FoodItems {
  final String imageUrl;
  final String? discount;
  final String title;
  final String subTitle;
  final String price;
  final String rating;

  FoodItems({
     this.discount,
    required this.title,
    required this.subTitle,
    required this.price,
     required this.rating,
    required this.imageUrl,
  });
}
