class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final double rating;
  final int ratingCount;
  final String imageUrl;
  final String category; // e.g., Toys, Cloths, Food, Diapers
  final String sellerName;
  final Duration eta; // e.g., delivery estimate or prep time

  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
    required this.ratingCount,
    required this.imageUrl,
    required this.category,
    required this.sellerName,
    required this.eta,
  });
}
