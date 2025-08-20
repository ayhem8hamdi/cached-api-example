import 'package:hive/hive.dart';

part 'product_entity.g.dart';

@HiveType(typeId: 0)
class ProductEntity extends HiveObject {
  @HiveField(0)
  final int? productId;
  @HiveField(1)
  final double? productPrice;
  @HiveField(2)
  final String? productCategory;
  @HiveField(3)
  final String? productPhotoUrl;
  @HiveField(4)
  final String? productName;
  @HiveField(5)
  final String? productDescription;

  @HiveField(6)
  final DateTime? productUpdatedAt;
  @HiveField(7)
  final DateTime? productCreatedAt;
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
