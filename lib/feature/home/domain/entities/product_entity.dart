class ProductEntity {
  final int id;
  final double price;
  final String category, photoUrl, name, description;
  final DateTime updatedAt, createdAt;

  ProductEntity(
      {required this.id,
      required this.price,
      required this.category,
      required this.photoUrl,
      required this.name,
      required this.description,
      required this.updatedAt,
      required this.createdAt});
}
