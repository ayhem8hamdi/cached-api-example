import 'package:caching/constants.dart';
import 'package:caching/feature/home/data/data_sources/local/home_local_data_source.dart';
import 'package:caching/feature/home/domain/entities/product_entity.dart';
import 'package:hive/hive.dart';

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<ProductEntity> getAllProducts() {
    var productBox = Hive.box<ProductEntity>(kProductBoxName);
    List<ProductEntity> products = productBox.values.toList();
    return products;
  }
}
