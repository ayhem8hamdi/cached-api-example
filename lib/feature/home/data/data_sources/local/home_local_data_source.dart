import 'package:caching/feature/home/domain/entities/product_entity.dart';

// here we are returning a non flutter list because we've already caching it so no more await and future
abstract class HomeLocalDataSource {
  List<ProductEntity> getAllProducts();
}
