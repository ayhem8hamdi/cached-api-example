import 'package:caching/feature/home/domain/entities/product_entity.dart';
import 'package:caching/feature/home/presentation/views/widgets/product_image.dart';
import 'package:caching/feature/home/presentation/views/widgets/product_infos.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.productEntity});
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
            flex: 4,
            child: ProductImage(
              imageLink: productEntity.productPhotoUrl!,
            )),
        const Gap(10),
        Flexible(flex: 5, child: ProductInfos(productEntity: productEntity))
      ],
    );
  }
}
