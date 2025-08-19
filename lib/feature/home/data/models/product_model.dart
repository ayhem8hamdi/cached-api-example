import 'package:caching/feature/home/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel(
      {required super.id,
      required super.price,
      required super.category,
      required super.photoUrl,
      required super.name,
      required super.description,
      required super.updatedAt,
      required super.createdAt});

  // Factory constructor to convert JSON from API into ProductModel
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as int,
      price: (json['price'] as num).toDouble(),
      category: json['category'] as String,
      updatedAt: DateTime.parse(json['updated_at'] as String),
      photoUrl: json['photo_url'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  // Optional: Convert model back to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'price': price,
      'category': category,
      'updated_at': updatedAt.toIso8601String(),
      'photo_url': photoUrl,
      'name': name,
      'description': description,
      'created_at': createdAt.toIso8601String(),
    };
  }
}
