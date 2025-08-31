part of 'products_cubit.dart';

@immutable
sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

final class ProductsLoading extends ProductsState {}

final class ProductsFailure extends ProductsState {
  final Failure failure;

  ProductsFailure(this.failure);
}

final class ProductsSucces extends ProductsState {
  final List<ProductEntity> products;

  ProductsSucces(this.products);
}
