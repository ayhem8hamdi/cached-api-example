class ProductEntity {
  final int? productId;
  final double? productPrice;
  final String? productCategory,
      productPhotoUrl,
      productName,
      productDescription;
  final DateTime? productUpdatedAt, productCreatedAt;

  ProductEntity(
      {required this.productId,
      required this.productPrice,
      required this.productCategory,
      required this.productPhotoUrl,
      required this.productName,
      required this.productDescription,
      required this.productUpdatedAt,
      required this.productCreatedAt});
}
