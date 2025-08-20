import 'package:caching/core/errors/failure.dart';
import 'package:caching/feature/home/data/data_sources/local/home_local_data_source.dart';
import 'package:caching/feature/home/data/data_sources/remote/home_remote_data_source.dart';
import 'package:caching/feature/home/domain/entities/product_entity.dart';
import 'package:caching/feature/home/domain/repos/product_repostry.dart';
import 'package:dartz/dartz.dart';

class ProductRepoImpl implements ProductRepostry {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  ProductRepoImpl(this.homeRemoteDataSource, this.homeLocalDataSource);
  @override
  Future<Either<Failure, List<ProductEntity>>> getAllProducts() async {
    try {
      var cachedProducts = homeLocalDataSource.getAllProducts();
      if (cachedProducts.isNotEmpty) {
        return right(cachedProducts);
      }

      var products = await homeRemoteDataSource.getAllProducts();
      return right(products);
    } catch (e) {
      return left(Failure.fromException(e));
    }
  }
}
