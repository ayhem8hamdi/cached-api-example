import 'package:caching/feature/home/presentation/views/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductsSliverList extends StatelessWidget {
  const ProductsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: ProductItem(),
            ));
  }
}
