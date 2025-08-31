import 'package:bloc/bloc.dart';
import 'package:caching/core/errors/failure.dart';
import 'package:caching/feature/home/data/repos/product_repo_impl.dart';
import 'package:caching/feature/home/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this._productRepoImpl) : super(ProductsInitial());
  final ProductRepoImpl _productRepoImpl;

  Future<void> fetchProducts() async {
    emit(ProductsLoading());
    final result = await _productRepoImpl.getAllProducts();

    result.fold((failure) {
      debugPrint('FeaturedBooks Error: ${failure.message}');
      emit(ProductsFailure(failure));
    }, (products) {
      emit(ProductsSucces(products));
    });
  }
}
