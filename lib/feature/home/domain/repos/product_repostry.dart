import 'package:caching/core/errors/failure.dart';
import 'package:caching/feature/home/domain/entities/product_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ProductRepostry {
  Future<Either<Failure, List<ProductEntity>>> getAllProducts();
}
