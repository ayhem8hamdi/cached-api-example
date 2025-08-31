import 'package:caching/feature/home/presentation/views/widgets/products_sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/products_cubit/products_cubit.dart';

class ProductsListBlocConsumer extends StatelessWidget {
  const ProductsListBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsLoading) {
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()));
        } else if (state is ProductsFailure) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(state.failure.message),
            ),
          );
        } else if (state is ProductsSucces) {
          return ProductsSliverList(
            products: state.products,
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
