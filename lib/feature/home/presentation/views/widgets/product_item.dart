import 'package:caching/feature/home/domain/entities/product_entity.dart';
import 'package:caching/feature/home/presentation/views/widgets/product_image.dart';
import 'package:caching/feature/home/presentation/views/widgets/product_infos.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.productEntity});
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 2,
            child: ProductImage(
              imageLink: productEntity.productPhotoUrl!,
            )),
        Expanded(flex: 3, child: ProductInfos(productEntity: productEntity))
      ],
    );
  }
}
