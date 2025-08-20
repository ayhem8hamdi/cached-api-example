import 'package:caching/constants.dart';
import 'package:caching/core/services/api_service.dart';
import 'package:caching/feature/home/data/data_sources/remote/home_remote_data_source.dart';
import 'package:caching/feature/home/data/models/product_model/product.dart';
import 'package:caching/feature/home/data/models/product_model/product_model.dart';
import 'package:caching/feature/home/domain/entities/product_entity.dart';
import 'package:hive/hive.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<ProductEntity>> getAllProducts() async {
    var data = await apiService.get();
    ProductModel productModel = ProductModel.fromJson(data);
    List<Product>? list = productModel.products;
    saveProductsLocally(list);
    return list ?? [];
  }

  void saveProductsLocally(List<Product>? list) {
    var productBox = Hive.box(kProductBoxName);
    productBox.clear();
    productBox.add(list);
  }
}
