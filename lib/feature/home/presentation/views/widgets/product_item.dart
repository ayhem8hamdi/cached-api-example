import 'package:caching/feature/home/presentation/views/widgets/product_image.dart';
import 'package:caching/feature/home/presentation/views/widgets/product_infos.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 2, child: ProductImage()),
          Expanded(flex: 3, child: ProductInfos())
        ],
      ),
    );
  }
}
