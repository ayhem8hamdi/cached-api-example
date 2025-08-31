import 'package:caching/feature/home/domain/entities/product_entity.dart';
import 'package:caching/feature/home/presentation/views/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductsSliverList extends StatelessWidget {
  const ProductsSliverList({super.key, required this.products});
  final List<ProductEntity> products;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: ProductItem(
                productEntity: products[index],
              ),
            ));
  }
}
