import 'product.dart';

class ProductModel {
  bool? success;
  num? totalProducts;
  String? message;
  num? offset;
  num? limit;
  List<Product>? products;

  ProductModel({
    this.success,
    this.totalProducts,
    this.message,
    this.offset,
    this.limit,
    this.products,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        success: json['success'] as bool?,
        totalProducts: json['total_products'] as num?,
        message: json['message'] as String?,
        offset: json['offset'] as num?,
        limit: json['limit'] as num?,
        products: (json['products'] as List<dynamic>?)
            ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'success': success,
        'total_products': totalProducts,
        'message': message,
        'offset': offset,
        'limit': limit,
        'products': products?.map((e) => e.toJson()).toList(),
      };
}
