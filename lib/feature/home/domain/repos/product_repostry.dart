import 'package:caching/feature/home/domain/entities/product_entity.dart';

abstract class ProductRepostry {
  Future<ProductEntity> getAllProducts();
}
