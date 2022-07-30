class Product {

  Product({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.price,
    this.discountedPrice = 0,
    required this.ratingCount,
    required this.rating,
  });

  final String id;
  final String name;
  final String imagePath;
  final int price;
  final int discountedPrice;
  final int ratingCount;
  final double rating;

}