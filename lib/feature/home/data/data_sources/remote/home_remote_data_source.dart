import 'package:caching/feature/home/domain/entities/product_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<ProductEntity>> getAllProducts();
}
